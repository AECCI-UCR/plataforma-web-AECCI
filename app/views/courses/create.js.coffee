$('#alerts').empty()

<% if @course.errors.any? %>
$('#alerts').append "<%= j render 'shared/error_messages', object: @course %>"
<% else %>
$('#alerts').append "<%= j render 'shared/flash_messages' %>"
# Limpia los campos del formulario
$('#course_initials').val('')
$('#course_name').val('')
$('#course_year').val('')
# Inserta el curso dentro del select
select = $('#test_course_id').selectize()
selectize = select[0].selectize;
selectize.addOption {value: <%= @course.id %>, name: "<%= @course.name %>"}
selectize.refreshOptions()
selectize.addItem(<%= @course.id %>)
<% end %>
