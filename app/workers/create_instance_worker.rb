class CreateInstanceWorker
  include Sidekiq::Worker
  #sidekiq_options queue: "instance"
  sidekiq_options retry: false
  def perform(params)    
    logger.info "Creating new instance: #{params["name"]}" 
    server = InstanceService.create(params["preset_id"])
    server.wait_for { ready? }
    

    instance = Instance.new_with_server_and_params(params, server)
    if instance.save    
      logger.info "#{params["name"]} was saved to db"
    else
      logger.info "Error in database for #{params["name"]}. Destroying server"
      server.destroy
      end
  end

end