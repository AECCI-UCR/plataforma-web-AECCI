# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ($) ->
  hide_contact_alerts = ->
    $('#name_alert').hide()
    $('#message_alert').hide()
    $('#mail_alert').hide()

  validate_contact_form = ->
    validate = true
    val = $('#contact_us_contact_name').val()
    console.log('Nombre: '+ val)
    if val == ''
      $('#name_alert').fadeIn()
      $('#contact_us_contact_name_input').addClass('has-error')
      validate = false
    else
      $('#name_alert').fadeOut()
      $('#contact_us_contact_name_input').removeClass('has-error')

    val = $('#contact_us_contact_email').val()
    console.log('Email: '+val)
    if val == ''
      $('#mail_alert').fadeIn()
      $('#contact_us_contact_email_input').addClass('has-error')
      validate = false
    else
      $('#mail_alert').fadeOut()
      $('#contact_us_contact_email_input').removeClass('has-error')

    val = $('#contact_us_contact_message').val()
    console.log('Mensaje: '+val)
    if val == ''
      $('#message_alert').fadeIn()
      $('#contact_us_contact_message_input').addClass('has-error')
      validate = false
    else
      $('#message_alert').fadeOut()
      $('#contact_us_contact_message_input').removeClass('has-error')

    return validate

  $(document).on 'ready page:load', ->
    hide_contact_alerts()
    $('#btn_contact_us').click (event) ->
      event.preventDefault()
      if validate_contact_form()
        $('#contact_us_form').submit()