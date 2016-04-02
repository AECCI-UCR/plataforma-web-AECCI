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
  return

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

validate_ad_image_url = ->
  if $('#ad_image_url').val() == ''
    $('#image_url_alert').fadeIn()
    $('#ad_image_url_input').addClass 'has-error'
    return false
  else
    $('#image_url_alert').fadeOut()
    $('#ad_image_url_input').removeClass 'has-error'
    return true

validate_ad_image_carousel_url = ->
  if $('#ad_important').is ':checked'
    if $('#image_carousel_url').val() == ''
      $('#image_carousel_url_alert').fadeIn()
      $('#ad_image_carousel_url_input').addClass 'has-error'
      return false
    else
      $('#image_carousel_url_alert').fadeOut()
      $('#ad_image_carousel_url_input').removeClass 'has-error'
      return true

validate_ad_form = ->
  validate_title = validate_ad_title()
  validate_description = validate_ad_description()
  validate_image_url = validate_ad_image_url()
  if $('#ad_important').is ':checked'
    validate_image_carousel = validate_ad_image_carousel_url()
    return validate_title and validate_description and validate_image_url and validate_image_carousel
  else
    return validate_title and validate_description and validate_image_url

validate_ad_form_realtime = ->
  $('#input_title').blur ->
    validate_ad_title()

  $('#input_description').blur ->
    validate_ad_description()

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
    hide_ad_alerts()
    hide_ad_carousel_part()

    $('a.back-to-top').click ->
      $('html, body').animate {scrollTop: 0}, 700
      false


    $('#ad_important').click ->
      if $(this).is ':checked'
        $('#carousel_part').fadeIn()
      else
        $('#carousel_part').fadeOut()
      return

    validate_ad_form_realtime()

    $('#new_ad').submit (event) ->
      event.preventDefault()
      if validate_ad_form()
        $('#new_ad').submit()