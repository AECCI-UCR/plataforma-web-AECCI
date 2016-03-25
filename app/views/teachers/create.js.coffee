jQuery(($) ->
  $('.modal-alerts').empty().hide()
<% if @teacher.errors.any? %>
  $('.modal-alerts').append("<%= j render 'shared/error_messages', object: @teacher %>").fadeIn('fast')
<% else %>
  $('.modal-alerts').append("<%= j render 'shared/flash_messages' %>").fadeIn('fast')
  # Limpia los campos del formulario
  $('#teacher_name').val('')
  # Inserta el curso dentro del select
  select = $('#test_teacher_id').selectize()
  selectize = select[0].selectize
  selectize.addOption {value: <%= @teacher.id %>, name: "<%= @teacher.name %>"}
  selectize.refreshOptions()
  selectize.addItem(<%= @teacher.id %>)
<% end %>
)()
