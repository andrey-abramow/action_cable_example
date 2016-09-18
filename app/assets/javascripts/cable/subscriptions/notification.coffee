#  trigger PostChannel#subscribed
App.notification = App.cable.subscriptions.create { channel: 'NotificationChannel' },

  received: (data) ->
    $('#notification-list').append("<li>#{data.message.message}</li>")

# Called when the subscription is ready for use on the server
  connected: ->
    console.log 'notification connected'

# Called when the WebSocket connection is closed
  disconnected: ->
    console.log 'notification disconnected'

# Called when the subscription is rejected by the server
  rejected: () ->
    alert('rejected!')

