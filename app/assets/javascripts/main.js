// new WOW().init();
$(document).ready(function() {


$(".add-beer-form").hide()
$(".beer-form-button").on("click", function(e){
  e.preventDefault();
  $(".add-beer-form").toggle();

});

$(".modal-body").hide();
$(".more-information").on("click", function(e){
  e.preventDefault();
  console.log("it worked")
  $(".modal-body").toggle("#quiz-here");

});

});
