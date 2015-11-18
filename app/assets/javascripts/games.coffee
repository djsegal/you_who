# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->

  $('.cs-chat').on 'keydown', (e) ->
    if !(e.keyCode == 13 and e.metaKey)
      return
    $target = $(e.target)
    if $target.is('textarea')
      $('#js-question-submit').click()

  $('#js-answer-yes').on 'click', (e) ->
    $('#js-answer-yes-submit').click()

  $('#js-answer-no').on 'click', (e) ->
    $('#js-answer-no-submit').click()
