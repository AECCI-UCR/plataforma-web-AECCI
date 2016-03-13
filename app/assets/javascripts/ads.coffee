dataConfirmModal.setDefaults
  title: 'Confirmación de eliminación'
  commit: 'Eliminar'
  cancel: 'Cancelar'

options_editor =
  textarea: 'input_description'
  button:
    preview: true
    fullscreen: false
    bar: 'show'
  string:
    togglePreview: 'Vista previa'
    toggleEdit: 'Editar'
    toggleFullscreen: 'Entrar en pantalla completa'
  autogrow:
    minHeight: 350
    maxHeight: 350
  file:
    name: 'adAECCI'
    defaultContent: ''
    autoSave: 100

load_epic_editor = ->
  editor = new EpicEditor(options_editor).load()

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
    localStorage.clear()
    #load_epic_editor()

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