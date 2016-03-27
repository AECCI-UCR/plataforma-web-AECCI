dataConfirmModal.setDefaults
  title: 'Confirmación de eliminación'
  commit: 'Eliminar'
  cancel: 'Cancelar'

initialize_file_style = ->
  $(':file').filestyle
    buttonName: 'btn-file'
    buttonText: ' Subir archivo'
    size: 'sm'
    iconName: 'glyphicon-file'

hide_carousel_part = ->
  if $('#check_important').is(':checked')
    $('#carousel_part').show()
  else
    $('#carousel_part').hide()
  return

jQuery ($) ->
# Esto es para el boton de "take me to top"
  amountScrolled = 300
  $(window).scroll ->
    if $(window).scrollTop() > amountScrolled
      $('a.back-to-top').fadeIn 'slow'
    else
      $('a.back-to-top').fadeOut 'slow'
    return


  $(document).on 'ready page:load', ->
    initialize_file_style()

    $('#title_alert').hide()
    $('#description_alert').hide()

    $('a.back-to-top').click ->
      $('html, body').animate {scrollTop: 0}, 700
      false

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