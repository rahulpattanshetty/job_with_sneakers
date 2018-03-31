require 'sneakers'
require 'sneakers/metrics/logging_metrics'
Sneakers.configure({
 					        amqp:"amqp://guest:guest@localhost:5672",
# #                     # username:"guest",
# #                     # password:"guest",
# #                     # hostname:"localhost",
                         vhost:'/',
                      # log:"log/sneakers.log",
                      pid_path:"tmp/pids/sneakers.pid",
#                     heartbeat: 2,
#                     # vhost:'test',
                      exchange: 'sneakers',
                 		  exchange_type: :direct,
                		  daemonize: false,
                		  ack: true,
                		  # handler: Sneakers::Handlers::Maxretry,
                      metrics: Sneakers::Metrics::LoggingMetrics.new,
#                     # daemonize: false,
                      heartbeat_interval: 20000,
#                     # start_worker_delay: 0.2,
                      durable: true,
#                     # retry_timeout: 30000,
                      retry_max_times: 3,
                      timeout_job_after: 60000,
                      threads: 2,
                      workers: 4
                      # prefetch: 4
#                     # # log: STDOUT
	})