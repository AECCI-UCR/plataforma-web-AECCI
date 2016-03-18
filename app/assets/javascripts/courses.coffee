# Código para la página de consulta de cursos
jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('#course_name').selectize {
      maxOptions: 3
      onChange: (value) ->
        window.location.replace "/courses/#{value}/teachers"
    }
