#  trigger PostChannel#subscribed
App.room1Poster = App.cable.subscriptions.create { channel: 'PostChannel', room: 'room1' },

  received: (data) ->
    $('#message-list-1').append("<li>#{data.message}</li>")

  post: (msg) -> @perform 'post', message: msg

# Called when the subscription is ready for use on the server
  connected: ->
    console.log 'room1Poster connected'

# Called when the WebSocket connection is closed
  disconnected: ->
    console.log 'room1Poster disconnected'

# Called when the subscription is rejected by the server
  rejected: () ->
    alert('rejected!')

