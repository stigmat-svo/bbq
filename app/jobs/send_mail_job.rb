class SendMailJob < ApplicationJob
  queue_as :default

  def perform(model)

  end
end
