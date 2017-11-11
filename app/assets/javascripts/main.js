// new WOW().init();
$(document).ready(function() {


$(".add-beer-form").hide()
$(".beer-form-button").on("click", function(e){
  e.preventDefault();
  $(".add-beer-form").toggle();

});

$(".more-information").on("click", function(e){
  e.preventDefault();
  $(".modal-body").show("#quiz-here");
  $(this).hide();

});

});
