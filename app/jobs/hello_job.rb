class HelloJob < ActiveJob::Base
  queue_as :default

  def perform(throw_ex=false)
    if throw_ex
      raise "you made a mistake"
    end
    sleep 10
    puts "I'm in a job"
    logger.info "Background job!"
  end
end
