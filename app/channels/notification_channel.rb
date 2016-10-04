class NotificationChannel < ApplicationCable::Channel

  # NotificationChannel.broadcast_to(user, {some data})
  def subscribed
    stream_for current_user
  end

end
