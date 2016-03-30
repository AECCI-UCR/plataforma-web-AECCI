$(document).on 'ready page:load', ->
  $('.link_nav').click ->
    alert('Boom')
    $('.active').remove()
    $(@).addClass('active')

###
jQuery ($) ->
  # Métodos

  # Muestra el modal con un mensaje mientras carga el contenido deseado
  modal_loading_message = (message) ->
    $('a[data-target=#modal]').click (event)->
      e.preventDefault()
      e.stopPropagation()
      # Limpia contenido del modal
      $('#modal-content').empty()
      # Inserta el mensaje que desplegará durante la carga
      $('#modal-content').append message

  $(document).on 'ready page:load', ->
    modal_loading_message('<b>Cargando...</b>')
###
