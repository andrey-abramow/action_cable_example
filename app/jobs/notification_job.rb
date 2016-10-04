class NotificationJob < ApplicationJob

  queue_as :default

  def perform(user)
    (1..100).to_a.each do |num|
      sleep 5
      NotificationChannel.broadcast_to(user, {"message"=>{"message"=>"notification #{num} for #{user.name}", "action"=>"post"}})
    end
  end

end
