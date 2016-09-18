class PostChannel < ApplicationCable::Channel

  def subscribed
    # triggers on App.cable.subscriptions.create { channel: 'PostChannel', room: 'room1' }
    stream_from params[:room]
  end

  def post(data)
    # triggers on room1Poster.post() room2Poster.post()
    ActionCable.server.broadcast(params[:room], message: data)
  end

end
