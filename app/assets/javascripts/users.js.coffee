$ ->
  $("#nav-dropdown-toggle").on 'click', ->
    $(".nav-dropdown").toggle()

  $("#new-user-form").on 'submit', ->

    if $("#password_confirmation").val() != $("#password_field").val()
      event.preventDefault()
      alert "passwords do not match"
