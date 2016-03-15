# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

hide_alerts = ->
  $('#year_alert').hide()
  $('#teacher_alert').hide()

jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('#test_teacher_id').selectize()
    $('#test_course_id').selectize()

    hide_alerts()