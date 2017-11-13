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
  $(".modal-body").fadeIn("#quiz-here");
  // $("#quiz-here").scrollIntoView();
  // scrollTop: scrolled
  $(this).hide();

});


$(".more-information").on("click" ,function(){
  $('html, body').animate({
        scrollTop: $("#beer-formy").offset().top
    }, 1000);
});



// $(".more-information").on("click", function(e){
//   e.preventDefault();
//   $(".modal-body").replaceWith("#quiz-here");
//   $(this).hide();

// });

function scrollDown() {
  var element = document.getElementById("beer-formy");
  element.scrollIntoView();
}



// function myFunction() {
//     var elmnt = document.getElementById("content");
//     elmnt.scrollIntoView();
// }

});
