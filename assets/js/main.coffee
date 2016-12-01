---
---
$ ->
  $('.cform').submit (event) ->
    event.preventDefault()
    cfName = @name.value
    $.ajax(
      url: 'https://formspree.io/jon@jmparsons.com'
      method: 'POST'
      data: $('.cform').serialize()
      dataType: 'json'
      beforeSend: ->
        $('.cform :submit').attr 'disabled', 'disabled'
        return
    ).done (data) ->
      $('.cfname').text cfName
      $('.confirm').height($('.cform').height()).show()
      $('.cform').remove()
      return
    return
  return