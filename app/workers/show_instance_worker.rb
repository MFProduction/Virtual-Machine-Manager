class ShowInstanceWorker
 include Sidekiq::Worker
 #sidekiq_options queue: "high"
  # sidekiq_options retry: false
  
  def perform(name)
    4.times {name} 
  end
end