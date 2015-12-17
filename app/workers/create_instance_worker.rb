class CreateInstanceWorker
  include Sidekiq::Worker
  #sidekiq_options queue: "instance"
  sidekiq_options retry: false
  def perform(name)
    logger.info "Creating new instance: #{name}" 
    server = Fog::Compute[:aws].servers.create(image_id: "ami-f0091d91", flavor_id:"t2.micro")
    server.wait_for { ready? }
    logger.info "#{name} instance is ready" 
    
    logger.info "Creating db entry for: #{name}" 
    instance = Instance.new(name: name)  
    instance.instance_id = server.id
    instance.flavor = server.flavor_id
    instance.public_ip = server.public_ip_address
    instance.availability_zone = server.availability_zone
    instance.dns_name = server.dns_name
    if instance.save    
      logger.info "Job for #{name} done."
    else
      logger.info "Error in database for #{name}. Destroying server"
      server.destroy
    end
  end
end
