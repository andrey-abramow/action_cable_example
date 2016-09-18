$ () ->
  $('#post-btn-1').on 'click', () ->
    App.room1Poster.post('Hello')

  $('#post-btn-2').on 'click', () ->
    App.room2Poster.post('Hello')
