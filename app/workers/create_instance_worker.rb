class CreateInstanceWorker
  include Sidekiq::Worker
  #sidekiq_options queue: "high"
  # sidekiq_options retry: false
  #TODOODOD
  def perform(name)
    logger.info "Creating new instance: #{name}"
    sleep(4.minutes)
    #logger.debug "Here's some info: #{hash.inspect}"
    #server = Fog::Compute[:aws].servers.servers.create(:flavor_id => 1, :image_id => 3, :name => name)
    #server.wait_for { ready? }
    logger.info "INSTANCE #{name} created!"
  end
end
