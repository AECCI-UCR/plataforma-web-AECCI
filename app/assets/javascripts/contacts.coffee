# TODO

validate_name ->
  $('#contact_us_contact_name').blur ->
    data = $('#contact_us_contact_name').val()
    if data
      alert("Error")
    else
    return

ready ->

  validate_name()

  $('#btn_submit').click (e) ->
    alert "MPLP"

$(document).ready ready
$(document).on 'page:load', ready