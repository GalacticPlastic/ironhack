$(document).on("turbolinks:load", function () {
	// console.log("Testing to See if App is Properly Wired. POTATO.");
	$('.add_ingredient').on('click', fetchIngredient);
});
function fetchIngredient (clickButton) {
	clickButton.preventDefault();
	var the_sandwich = $(this).data('sandwich-id');
	var new_ingredient = $(this).data('ingredient-id');
	console.log(the_sandwich);
	console.log(new_ingredient);
	$.ajax ({
		type: "POST",
		url: `http://localhost:3000/api/sandwiches/${the_sandwich}/ingredients/add`,
		data: { ingredient_id: new_ingredient },
		success: addIngredient,
		error: errorIngredient,
	});
};
function addIngredient (response) {
	console.log(response);
	var ing_array = response.ingredients;
	console.log(ing_array);
	var show_ing = ing_array.slice(-1)[0];
	console.log("Show_Ing Variable");
	console.log(show_ing);
	var ing_name = show_ing.name;
	console.log(ing_name);
	$('#sammich-ingredients').append(`<li>${ing_name}</li>`);
	var current_cal = $('.js-total-calories').text();
	var new_cal = parseInt(current_cal) + show_ing.calories;
	$('.js-total-calories').text(new_cal);
};
function errorIngredient (error) {
	console.log('You fail at life, brah.');
	console.log(error.responseText);
};