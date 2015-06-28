$ ->
  console.warn "ready"
  $("#nav-dropdown-toggle").on 'click', ->
    $(".nav-dropdown").toggle()
