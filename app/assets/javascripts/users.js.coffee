# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
users_sign_in = ->
  return null if $("#user_signin").length == 0;
  $("input[name=sign_in_up]").change ->
    if $(this).val() == "sign_up"
      $("#user_password, #user_remember_me").attr("disabled", true)
    else
      $("#user_password, #user_remember_me").removeAttr("disabled")
    $("#sign_up_button, #sign_in_button").toggle()

  $("#sign_up").click ->
    $("#email").val $("#user_email").val()
    $("#form_sign_up form").submit()

$(document).ready(users_sign_in);
$(document).on('page:load', users_sign_in);
