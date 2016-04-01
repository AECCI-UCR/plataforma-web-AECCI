# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

validate_contact_name = ->
  validate = true
  val = $('#contact_us_contact_name').val()
  if val == ''
    $('#name_alert').fadeIn()
    $('#contact_us_contact_name_input').addClass('has-error')
    validate = false
  else
    $('#name_alert').fadeOut()
    $('#contact_us_contact_name_input').removeClass('has-error')
  return validate

validate_contact_email = ->
  validate = true
  val = $('#contact_us_contact_email').val()
  if val == ''
    $('#mail_alert').fadeIn()
    $('#contact_us_contact_email_input').addClass('has-error')
    validate = false
  else
    $('#mail_alert').fadeOut()
    $('#contact_us_contact_email_input').removeClass('has-error')
  return validate

validate_contact_message = ->
  validate = true
  val = $('#contact_us_contact_message').val()
  if val == ''
    $('#message_alert').fadeIn()
    $('#contact_us_contact_message_input').addClass('has-error')
    validate = false
  else
    $('#message_alert').fadeOut()
    $('#contact_us_contact_message_input').removeClass('has-error')
  return validate

# Metodo que se activa cuando el usuario intenta hacerle submit al formulario de contact_us
validate_contact_form = ->
  validate_name = validate_contact_name()
  validate_email = validate_contact_email()
  validate_message = validate_contact_message()
  return validate_email and validate_name and validate_message

validate_contact_form_realtime = ->
  $('#contact_us_contact_name').blur ->
    validate_contact_name()
  $('#contact_us_contact_email').blur ->
    validate_contact_email()
  $('#contact_us_contact_message').blur ->
    validate_contact_message()

jQuery ($) ->
  hide_contact_alerts = ->
    $('#name_alert').hide()
    $('#message_alert').hide()
    $('#mail_alert').hide()

  $(document).on 'ready page:load', ->
    hide_contact_alerts()
    $('#contact_us_form').submit (event) ->
      event.preventDefault()
      if validate_contact_form()
        $('#contact_us_form').submit()

    validate_contact_form_realtime()