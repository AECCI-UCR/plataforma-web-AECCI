# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->
  $('#hide-area').hide()
  $('#btn-show-more').click ->
    $('#hide-area').fadeIn()
    $('#btn-show-more').fadeOut()


  $('#btn-show-less').click ->
    $('#hide-area').fadeOut()
    $('#btn-show-more').fadeIn()

$(document).ready ready
$(document).on 'page:load', ready