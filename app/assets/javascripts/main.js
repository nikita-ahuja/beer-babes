// new WOW().init();
$(document).ready(function() {


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
  $(".modal-body").show("#quiz-here");
  $(this).hide();

});

// $(".more-information").on("click", function(e){
//   e.preventDefault();
//   $(".modal-body").replaceWith("#quiz-here");
//   $(this).hide();

// });

// $(".start-drinking").on("click", function(e){
//   e.preventDefault();
//   $(this).hide();
//   $(".slogan").hide();
//   $(".md-form").show();

// });

});
