# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
  $('#title_alert').hide()
  $('#carousel_part').hide()

  $('#check_important').click ->
    if $(this).is(':checked')
      $('#carousel_part').fadeIn()
    else
      $('#carousel_part').fadeOut()
    return
  return

  $('#input_title').blur() ->
    if $('#input_title').val == ""
      $('#title_alert').fadeIn()
    else
      $('#title_alert').fadeOut()
    return
  return

  # TODO Este escript todavia no se esta ejecutando
  image_uploaded = (input) ->
  if input.files and input.files[0]
    reader = new FileReader

    reader.onload = (e) ->
      $('#img_prev').attr('src', e.target.result).width(150).height 200
      return

    reader.readAsDataURL input.files[0]
  return

$(document).ready(ready)
$(document).on('page:load', ready)