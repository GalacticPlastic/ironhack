console.log("CONSOLE LOG");
$(document).ready(function () {
	$('.btn-pepperonni').on('click', function () {
		// console.log("Oh pepperoni, why so mad?");	<= Wiring Test
		$('.pep').toggle();
		$('.btn-pepperonni').toggleClass('active');
		$('#price').empty();
		if ($('.btn-pepperonni').hasClass('active')) {
			totalPrice += pepPrice;
			$('#pepperoni').toggle();
		} else {
			totalPrice -= pepPrice;
            $('#pepperoni').toggle();
		}
		$('#price').append(totalPrice);
		$('#price').prepend("$");
	});
	$('.btn-mushrooms').on('click', function () {
		$('.mushroom').toggle();
		$('.btn-mushrooms').toggleClass('active');
		$('#price').empty();
        if ($('.btn-mushrooms').hasClass('active')) {
			totalPrice += mushPrice;
   	        $('#mushroom').toggle();
        } else {
        	totalPrice -= mushPrice;
   	        $('#mushroom').toggle();
        }
        $('#price').append(totalPrice);
        $('#price').prepend("$");
	});
	$('.btn-green-peppers').on('click', function () {
		$('.green-pepper').toggle();
		$('.btn-green-peppers').toggleClass('active');
		$('#price').empty();
		if ($('.btn-green-peppers').hasClass('active')){
			totalPrice += greenPrice;
			$('#green-pepper').toggle();
		} else {
			totalPrice -= greenPrice;
			$('#green-pepper').toggle();
		}
		$('#price').append(totalPrice);
		$('#price').prepend("$");
	});
	$('.btn-sauce').on('click', changeSauce);
	$('.btn-crust').on('click', changeCrust);
});
function changeSauce () {
	$('#price').empty();
	if ($('#pizza-sauce').hasClass('sauce-white')) {
		$('#pizza-sauce').removeClass('sauce-white');
		$('.btn-sauce').text('White Sauce');
		totalPrice -= crustPrice;
		$('#white-sauce').toggle();
	} else {
		$('#pizza-sauce').addClass('sauce-white');
		$('.btn-sauce').text('Regular Sauce');
		totalPrice += crustPrice;
		$('#white-sauce').toggle();  
	}
	$('#price').append(totalPrice);
	$('#price').prepend("$");
}
function changeCrust () {
	$('#price').empty();
	if ($('#pizza-crust').hasClass('crust-gluten-free')) {
		$('#pizza-crust').removeClass('crust-gluten-free');
		$('.btn-crust').text('Gluten-Free Crust');
		totalPrice -= crustPrice;
		$('#gluten-free').toggle();
	} else {
		$('#pizza-crust').addClass('crust-gluten-free');
		$('.btn-crust').text('Regular Crust');
		totalPrice += crustPrice;
		$('#gluten-free').toggle();  
	}
	$('#price').append(totalPrice);
	$('#price').prepend("$");
}
var totalPrice = 10;
var pepPrice = 1;
var mushPrice = 1;
var greenPrice = 1;
var saucePrice = 3;
var crustPrice = 5;