class NotificationJob < ApplicationJob

  queue_as :default

  def perform(user)
    (1..100).to_a.each do |num|
      sleep 5
      ActionCable.server.broadcast("web_notifications_#{user.id}", {"message"=>{"message"=>"notification #{num} for #{user.name}", "action"=>"post"}})
    end
  end

end
