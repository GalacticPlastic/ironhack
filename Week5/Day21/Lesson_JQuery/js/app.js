console.log("CONSOLE LOG");
$(document).ready(function () {
	$('.js-pizza').on('click', function () {
		// $('.js-small').text(' PIZZA! PIZZA!');
		$('p').remove();
	});
	$('.empanadas').click(function () {
		// $('.js-heading').html(`
		// 	<span>Argentinian empanadas are the only good empanadas.</span>
		// 	<a href="#">Dame Uno!</a>
		// `)
		$('h1').empty();
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
	$('.js-change-unicorn').on('click', changeUnicorn);

	$('#masta-fade').on('click', fadeAll);

	$('.unicorn-mode').on('click', function () {
		$('*').addClass('.Unicornified');
	});
});
function fadeAll () {
	$(this).siblings().fadeOut();
}
// function fadeAll () {
// 	if ($(this).hasClass('.masta-fade')) {
// 		$(this).noop();
// 	} else {
// 		$(this).fadeOut();
// 	}
// }
// function fadeAll () {
// 	if ($('*'):not('.masta-fade')) {
// 		$(this).fadeOut();
// 	}
// }

function cookieMessage () {
	if ($('.cookie-popup').length > 0) {
		$('.cookie-popup').remove();
	} else {
		var cookieContent = `
			<section class="cookie-popup">
				<img src="https://s-media-cache-ak0.pinimg.com/236x/03/70/e5/0370e5d7cf274f117ff1de0a0b65f484.jpg" />
				// <h3>PUT THAT COOKIE DOWN!</h3>
				// <h4>NOOOOWWW!!</h4>
				<p>All I want to do is zoom-a-zoom-zoom-zoom</p>
				<p>And a boom-boom</p>
			</section>
		`;
	}
	$('body').prepend(cookieContent);
}
function changeUnicorn () {
	// console.log("Button Wiring Test");
	// Always test wiring for basic syntax errors BEFORE getting into functionality
	
	unicornCount += 1;
	if (unicornCount > 3) {
		unicornCount = 1;
	}
	$('.js-unicorn2').attr("src", `images/unicorn${unicornCount}.gif`);
}
function changeBtnColor () {
	$('button').addClass('btn');
	// $('button').toggleClass('btn-success');
	if ($('button').hasClass('btn-success')) {
		$('button').removeClass('btn-success');
		$('button').addClass('btn-info');
	} else if ($('button').hasClass('btn-info')) {
		$('button').removeClass('btn-info');
		$('button').addClass('btn-warning');
	} else if ($('button').hasClass('btn-warning')) {
		$('button').removeClass('btn-warning');
	} else {
		$('button').addClass('btn-success');
	}
}
var price = '<p>Only $399.99</p>';
$('.container').append(price);
var unicornCount = 1;