jQuery ($) ->
  new_teacher_ajax = ->
    alert 'He sido llamado'
    $('form').submit (event) ->
      alert "Handler for .submit() called."
      event.preventDefault()

      # Teacher data
      name = $('#teacher_name').val()
      $.ajax
        type: 'POST'
        url: $(@).attr('action')
        dataType: 'json'
        data:
          teacher: {name: name}
        success: (json) ->
          alert "El nombre del profesor es: #{json.name} y la locacion del mofo es: #{json.location}"

    $('#teacher-form-modal').click ->
      alert 'Sí funciono'

###  $(document).on 'ajaxComplete', ->
    new_teacher_ajax()###
