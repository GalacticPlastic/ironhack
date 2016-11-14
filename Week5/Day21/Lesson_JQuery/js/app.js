console.log("CONSOLE LOG");
$(document).ready(function () {
	$('.js-pizza').on('click', function () {
		$('.js-small').append(' PIZZA! PIZZA!');
	});
	$('.empanadas').click(function () {
		alert('Argentinian empanadas are the only good empanadas.')
	});
	$('#cookies').on('click', cookieMessage);
	$(".js-button").on("click", function () {
		$("body").append(`<img src="images/unicorn1.gif">`);
	});
	$(".js-button-change").on("click", function () {
    $(".js-button").addClass("btn");
	    if ($(".js-button").hasClass("btn-info")) {
	      $(".js-button").addClass("btn-danger");
	      $(".js-button").removeClass("btn-info");
	    }
	    else {
	      $(".js-button").addClass("btn-info");
	      $(".js-button").removeClass("btn-danger");
	    }
	});
	// $(''.on(''), function () { });
});
function cookieMessage () {
	alert('PUT THAT COOKIE DOWN! NOOOOWWW!!')
}
var price = '<p>Only $399.99</p>';
$('.container').append(price);