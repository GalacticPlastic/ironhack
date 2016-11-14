console.log("CONSOLE LOG");
$(document).ready(function () {
	$('.js-pizza').on('click', function () {
		$('.js-small').prepend(' PIZZA! PIZZA!');
	});
	$('.empanadas').click(function () {
		$('.js-heading').after(`
			<span>Argentinian empanadas are the only good empanadas.</span>
			<a href="#">Dame Uno!</a>
		`)
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
});
function cookieMessage () {
	var cookieContent = `
		<br>
		<section>
			<img src="https://s-media-cache-ak0.pinimg.com/236x/03/70/e5/0370e5d7cf274f117ff1de0a0b65f484.jpg" />
			<h3>PUT THAT COOKIE DOWN!</h3>
			<h4>NOOOOWWW!!</h4>
		</section>
	`;
	$('body').prepend(cookieContent);
}
var price = '<p>Only $399.99</p>';
$('.container').append(price);