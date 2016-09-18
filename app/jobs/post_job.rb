class PostJob < ApplicationJob

  def perform
    # ActionCable.server.broadcast("room1", '3')
  end

end
