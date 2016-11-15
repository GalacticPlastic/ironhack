$(document).ready(function () {
	$('.btn-pepperonni').on('click', changePepperoni);
	$('.btn-mushrooms').on('click', changeShrooms);
	$('.btn-green-peppers').on('click', changePeppers);
	$('.btn-sauce').on('click', changeSauce);
	$('.btn-crust').on('click', changeCrust);
});
function changePepperoni () {
	$('.pep').fadeToggle();
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
}
function changeShrooms () {
	$('.mushroom').fadeToggle();
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
}
function changePeppers () {
	$('.green-pepper').fadeToggle();
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
}
function changeSauce () {
	$('#price').empty();
	$('#pizza-sauce').toggleClass('active');
	if ($('#pizza-sauce').hasClass('sauce-white')) {
		$('#pizza-sauce').removeClass('sauce-white');
		$('.btn-sauce').text('White Sauce');
		totalPrice -= saucePrice;
		$('#white-sauce').toggle();
	} else {
		$('#pizza-sauce').addClass('sauce-white');
		$('.btn-sauce').text('Regular Sauce');
		totalPrice += saucePrice;
		$('#white-sauce').toggle();  
	}
	$('#price').append(totalPrice);
	$('#price').prepend("$");
}
function changeCrust () {
	$('#price').empty();
	$('#pizza-crust').toggleClass('active');
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