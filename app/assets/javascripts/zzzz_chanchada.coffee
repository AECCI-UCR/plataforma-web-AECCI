# La chanchada mas chancha

# ATENCION: por motivos que no logramos entender, el siguiente código siempre tiene que ir en este archivo y hay que
# asegurarse que el archivo siempre se cargue al final de los javascript (coffeescript), por eso el nombre empieza
# con "zzz_". Si no se pone este archivo de último, la linea "editor = new EpicEditor(options_editor).load()" desabilita
# todos los javascripts que vengan después.

# TODO: averiguar por que pasa eso y lograr una solucion correcta

options_editor =
  textarea: 'input_description'
  button:
    preview: true
    fullscreen: false
    bar: 'auto'
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

jQuery ($) ->
  $(document).on 'ready page:load', ->
    localStorage.clear()
    editor = new EpicEditor(options_editor).load()
