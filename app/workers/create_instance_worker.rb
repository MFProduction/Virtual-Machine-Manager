class CreateInstanceWorker
  include Sidekiq::Worker
  #sidekiq_options queue: "instance"
  sidekiq_options retry: false
  def perform(name, preset_id)
    preset = Preset.find(preset_id)
    logger.info "Creating new instance: #{name}" 
    server = Fog::Compute[:aws].servers.create(image_id: preset.image_id, flavor_id: preset.flavor_id)
    server.wait_for { ready? }
    logger.info "#{name} instance is ready" 
    
    logger.info "Creating db entry for: #{name}" 
    instance = Instance.new(name: name)  
    instance.instance_id = server.id
    instance.image_id = server.image_id
    instance.flavor_id = server.flavor_id
    instance.private_ip = server.private_ip_address
    instance.public_ip = server.public_ip_address
    instance.availability_zone = server.availability_zone
    instance.dns_name = server.dns_name
    instance.private_dns_name = server.private_dns_name

    if instance.save    
      logger.info "Job for #{name} done."
    else
      logger.info "Error in database for #{name}. Destroying server"
      server.destroy
    end
  end
end