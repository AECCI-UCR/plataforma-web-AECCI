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
    placeholder: 'Sin archivo'

hide_ad_alerts = ->
  $('#title_alert').hide()
  $('#description_alert').hide()
  $('#image_url_alert').hide()
  $('#image_carousel_url_alert').hide()

hide_ad_carousel_part = ->
  if $('#ad_important').is ':checked'
    $('#carousel_part').show()
  else
    $('#carousel_part').hide()

validate_ad_title = ->
  if $('#input_title').val() == ''
    $('#title_alert').fadeIn()
    $('#ad_title_input').addClass 'has-error'
    return false
  else
    $('#title_alert').fadeOut()
    $('#ad_title_input').removeClass 'has-error'
    return true

validate_ad_description = ->
  if $('#input_description').val() == ''
    $('#description_alert').fadeIn()
    $('#ad_description_input').addClass 'has-error'
    return false
  else
    $('#description_alert').fadeOut()
    $('#ad_description_input').removeClass 'has-error'
    return true

validate_ad_form = ->
  validate_title = validate_ad_title()
  validate_description = validate_ad_description()
  return validate_title and validate_description

validate_ad_form_realtime = ->
  $('#input_title').blur ->
    validate_ad_title()

  $('#input_description').blur ->
    validate_ad_description()

jQuery ($) ->
  $(document).on 'ready page:load', ->
    initialize_file_style()
    hide_ad_alerts()
    hide_ad_carousel_part()


    $('#ad_important').click ->
      if $(this).is ':checked'
        $('#carousel_part').fadeIn()
      else
        $('#carousel_part').fadeOut()

    validate_ad_form_realtime()

    $('#btn_ad_submit').click (event) ->
      event.preventDefault()
      if validate_ad_form()
        $('#ad_form').submit()