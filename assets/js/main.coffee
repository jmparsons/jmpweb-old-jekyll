---
---
$ ->

  # slim
  $(window).on "scroll", (event) ->
    $("body").toggleClass "slim", $(this).scrollTop() > 20
    return

  # contact form
  $(".cform").on "submit", (event) ->
    event.preventDefault()
    valid = true
    $(this).find("[required]").each (index, element) ->
      if $(element).val().trim() is ""
        valid = false
    if valid
      cfName = @name.value
      $.ajax(
        url: "https://formspree.io/jon@jmparsons.com"
        method: "POST"
        data: $(".cform").serialize()
        dataType: "json"
        beforeSend: ->
          $(".cform :submit").attr "disabled", "disabled"
          return
      ).done (data) ->
        $(".cfname").text cfName
        $(".confirm").height($(".cform").height()).show()
        $(".cform").remove()
       return
    return
  return