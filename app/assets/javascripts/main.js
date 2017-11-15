$(document).ready(function() {

$(".users.new").ready(function () {
  $('#myModal').modal('show');
  $(".btn").on('click',function(){
    $('#myModal').modal('hide');
  })
});


$(".add-beer-form").hide()
$(".beer-form-button").on("click", function(e){
  e.preventDefault();
  $(".add-beer-form").toggle();

});

$(".more-information").bind("mouseover", function(e){
  e.preventDefault();
  $(this).css("color", "#742727")

});

$(".more-information").bind("mouseleave", function(e){
  e.preventDefault();
  $(this).css("color", "black")

});

$(".more-information").on("click", function(e){
  e.preventDefault();
  $(".modal-body").fadeIn("#quiz-here");
  $(this).hide();

});


$(".more-information").on("click" ,function(){
  $('html, body').animate({
        scrollTop: $("#beer-formy").offset().top
    }, 1000);
});

});
