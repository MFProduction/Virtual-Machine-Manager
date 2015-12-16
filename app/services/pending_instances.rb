class PendingInstances
require 'sidekiq/api'


#TODO
  def self.show
    queue = Sidekiq::Queue.new
    queue.each do |job|
      job.klass # => 'MyWorker'
      job.args # => [1, 2, 3]
      job.delete if job.jid == 'abcdef1234567890'
end
  end

end