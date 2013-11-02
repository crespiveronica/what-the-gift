function validateReason(clicked_id)
{
  var input_id = clicked_id.replace('btn-', '');
  if (document.getElementById(input_id).value == "")
  {
    $('#reasonError').html('El motivo no puede quedar vacío.');
    $('#reasonModal').modal();
    return false;
  }

  return true;
}