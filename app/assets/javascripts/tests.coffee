# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

hide_alerts = ->
  $('#year_alert').hide()
  $('#teacher_alert').hide()
  $('#semester_alert').hide()
  $('#test_number_alert').hide()
  $('#file_url_alert').hide()
  $('#course_alert').hide()

jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('#test_teacher_id').selectize({valueField: 'value', labelField: 'name'})
    $('#test_course_id').selectize({valueField: 'value', labelField: 'name'})

    hide_alerts()

    $('#test_year').blur ->
      if $('#test_year').val() == ''
        $('#year_alert').fadeIn()
      else
        $('#year_alert').fadeOut()

    $('#test_teacher_id').blur ->
      if $('#test_teacher_id').val() == ''
        $('#teacher_alert').fadeIn()
      else
        $('#teacher_alert').fadeOut()

    $('#test_semester').blur ->
      if $('#test_semester').val() == ''
        $('#semester_alert').fadeIn()
      else
        $('#semester_alert').fadeOut()

    $('#test_test_number').blur ->
      if $('#test_test_number').val() == ''
        $('#test_number_alert').fadeIn()
      else
        $('#test_number_alert').fadeOut()

    $('#test_file_url').blur ->
      if $('#test_file_url').val() == ''
        $('#file_url_alert').fadeIn()
      else
        $('#file_url_alert').fadeOut()

    $('#test_course_id').blur ->
      if $('#test_course_id').val() == ''
        $('#course_alert').fadeIn()
      else
        $('#course_alert').fadeOut()
