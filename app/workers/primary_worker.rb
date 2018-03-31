class PrimaryWorker
  include Sneakers::Worker
  from_queue :mailers
  def work(msg)
    job_data = ActiveSupport::JSON.decode(msg)
    ActiveJob::Base.execute job_data
    ack!
    
  end
end