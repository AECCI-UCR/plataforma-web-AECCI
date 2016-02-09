# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('#check_important').click ->
    if $(this).is(':checked')
      alert 'checked!'
    else
      alert 'not checked!'
    return
  return

  $('#input_title').blur ->
    if $('#input_title').val() == ""
      $('#title_alert').fadeIn()
    else
      $('#title_alert').fadeOut()
    return
  return