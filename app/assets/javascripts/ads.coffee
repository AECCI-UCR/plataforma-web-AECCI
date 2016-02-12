# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#title_alert').hide()
  $('#description_alert').hide()

  if $('#check_important').is(':checked')
    $('#carousel_part').show()
  else
    $('#carousel_part').hide()
  return

  $('#check_important').click ->
    if $(this).is(':checked')
      $('#carousel_part').fadeIn()
    else
      $('#carousel_part').fadeOut()
    return

  $('#input_title').blur ->
    val = $('#input_title').val()
    if val == ''
      $('#title_alert').fadeIn()
    else
      $('#title_alert').fadeOut()
    return

  $('#input_description').blur ->
    val = $('#input_description').val()
    if val == ''
      $('#description_alert').fadeIn()
    else
      $('#description_alert').fadeOut()
    return


$(document).ready ready
$(document).on 'page:load', ready