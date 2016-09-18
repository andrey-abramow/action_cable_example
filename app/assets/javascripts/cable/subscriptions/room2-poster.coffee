#  trigger PostChannel#subscribed
App.room2Poster = App.cable.subscriptions.create { channel: 'PostChannel', room: 'room2' },

  received: (data) ->
    $('#message-list-2').append("<li>#{data.message.message}</li>")

  post: (msg) -> @perform 'post', message: msg

# Called when the subscription is ready for use on the server
  connected: ->
    console.log 'room2Poster connected'

# Called when the WebSocket connection is closed
  disconnected: ->
    console.log 'room2Poster disconnected'

# Called when the subscription is rejected by the server
  rejected : () ->
    alert('rejected!')
