$(document).foundation();

$(document).ready(function() {

  $(".cform").submit(function(event){
    event.preventDefault();
    var cfName = this.name.value;
    $.ajax({
      url: "https://formspree.io/jon@jmparsons.com",
      method: "POST",
      data: $(".cform").serialize(),
      dataType: "json",
      beforeSend: function() {
        $(".cform :submit").attr("disabled", "disabled")
      }
    }).done(function(data) {
      $(".cfname").text(cfName);
      $(".confirm").height($(".cform").height()).show();
      $(".cform").remove();
    });
  });

});