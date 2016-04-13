hide_alerts = ->
  $('#year_alert').hide()
  $('#teacher_alert').hide()
  $('#semester_alert').hide()
  $('#test_number_alert').hide()
  $('#file_url_alert').hide()
  $('#course_alert').hide()

validate_test_year = ->
  if $('#test_year').val() == ''
    $('#year_alert').fadeIn()
    $('#test_year_input').addClass 'has-error'
    return false
  else
    $('#year_alert').fadeOut()
    $('#test_year_input').removeClass 'has-error'
    return true

validate_test_teacher_id = ->
  if $('#test_teacher_id').val() == ''
    $('#teacher_alert').fadeIn()
    $('#test_teacher_id_input').addClass 'has-error'
    return false
  else
    $('#teacher_alert').fadeOut()
    $('#test_teacher_id_input').removeClass 'has-error'
    return true

validate_test_semester = ->
  if $('#test_semester').val() == ''
    $('#semester_alert').fadeIn()
    $('#test_semester_input').addClass 'has-error'
    return false
  else
    $('#semester_alert').fadeOut()
    $('#test_semester_input').removeClass 'has-error'
    return true

validate_test_number = ->
  if $('#test_test_number').val() == ''
    $('#test_number_alert').fadeIn()
    $('#test_number_input').addClass 'has-error'
    return false
  else
    $('#test_number_alert').fadeOut()
    $('#test_number_input').removeClass 'has-error'
    return true

validate_test_course_id = ->
  if $('#test_course_id').val() == ''
    $('#course_alert').fadeIn()
    $('#test_course_id_input').addClass 'has-error'
    return false
  else
    $('#course_alert').fadeOut()
    $('#test_course_id_input').removeClass 'has-error'
    return true


validate_test_form_realtime = ->
  $('#test_year').blur ->
    validate_test_year()
  $('#test_teacher_id').blur ->
    validate_test_teacher_id()
  $('#test_semester').blur ->
    validate_test_semester()
  $('#test_test_number').blur ->
    validate_test_number()
  $('#test_course_id').blur ->
    validate_test_course_id()

validate_test_form = ->
  validate_year = validate_test_year()
  validate_teacher = validate_test_teacher_id()
  validate_semester = validate_test_semester()
  validate_number = validate_test_number()
  validate_course = validate_test_course_id()
  console.log validate_year, validate_teacher, validate_semester, validate_number, validate_course
  return validate_year and validate_teacher and validate_semester and validate_number and validate_course

jQuery ($) ->
  $(document).on 'ready page:load', ->
    $('#test_teacher_id').selectize
      valueField: 'value'
      labelField: 'name'
      searchField: 'name'

    $('#test_course_id').selectize
      valueField: 'value'
      labelField: 'name'
      searchField: 'name'

    hide_alerts()
    validate_test_form_realtime()
    $('#btn_test_submit').click (event) ->
      event.preventDefault()
      if validate_test_form()
        $('#test_form').submit()