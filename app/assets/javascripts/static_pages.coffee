# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

validate_contact_form = ->
  validate = true
  alert('Boom')
  val = $('contact_us_contact_name_input').val()
  if val == ''
    $('#name_alert').fadeIn()
    console.log('Detecte que no hay nombre')
    validate = false
  else
    $('#name_alert').fadeOut()

  val = $('contact_us_contact_email_input').val()
  if val == ''
    $('#email_alert').fadeIn()
    console.log('Detecte que no hay correo')
    validate = false
  else
    $('#email_alert').fadeOut()

  val = $('contact_us_contact_message_input').val()
  if val == ''
    $('#message_alert').fadeIn()
    console.log('Detecte que no hay mensaje')
    validate = false
  else
    $('#message_alert').fadeOut()

  return validate

jQuery ($) ->
  hide_contact_alerts = ->
    $('#name_alert').hide()
    $('#message_alert').hide()
    $('#mail_alert').hide()

  $(document).on 'ready page:load', ->
    hide_contact_alerts()