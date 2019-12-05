$(document).ready(function( ) {
  
  // 2
  $("h1").text("Lab9");
  
  // 3
  $('#header').html("Working with jQuery");
  
  // 4
  $("input[type='button']").each(function (index, element) {
    $(element).addClass("btn-background");
  }); 
  
  // 5 
  $("#buttons").addClass("red-border");
  
  // 6
  $("p").each(function (index, element) {
    $(element).addClass("blue");    
  });
  
  // 7
  $("#first").on("click", function () {
    $("p:first").addClass("green-border");
  }); 
  
  // 8
  $("#last").on("click", function () {
    $("p:last").addClass("orange-border");
  });
  
  // 9
  $("#prev").on("click", function () {
    $("#para3").prev().addClass("purple-border");
  });
  
  // 10
  $("#next").on("click", function () {
    $("#para2").next().addClass("yellow-border");
  });
  
  // 11
  $("#remove").on("click", function () {
    $("#footer").remove();
  });
});