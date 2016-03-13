dataConfirmModal.setDefaults
  title: 'Confirmación de eliminación'
  commit: 'Eliminar'
  cancel: 'Cancelar'

hide_carousel_part = ->
  if $('#check_important').is(':checked')
    $('#carousel_part').show()
  else
    $('#carousel_part').hide()
  return

jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('#title_alert').hide()
    $('#description_alert').hide()

    hide_carousel_part()

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