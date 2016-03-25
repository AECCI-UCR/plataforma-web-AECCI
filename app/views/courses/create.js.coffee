jQuery(($) ->
  $('.modal-alerts').empty().hide()
<% if @course.errors.any? %>
  $('.modal-alerts').append("<%= j render 'shared/error_messages', object: @course %>").fadeIn('fast')
<% else %>
  $('.modal-alerts').append("<%= j render 'shared/flash_messages' %>").fadeIn('fast')
  # Limpia los campos del formulario
  $('#teacher_name').val('')
  $('#course_name').val('')
  $('#course_year').val('')
  # Inserta el curso dentro del select
  select = $('#test_course_id').selectize()
  selectize = select[0].selectize
  selectize.addOption {value: <%= @course.id %>, name: "<%= @course.name %>"}
  selectize.refreshOptions()
  selectize.addItem(<%= @course.id %>)
<% end %>
)()
