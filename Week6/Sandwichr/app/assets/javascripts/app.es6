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
	ing_array = response.ingredients;

	console.log('Burnt potato. :(');
	console.log(ing_array);
	// show_ing = ing_array.slice(-1)[0];

	// Or...
	// show_ing = ing_array.lastIndexOf();
	// console.log(show_ing);
	
	// $('#sammich-ingredients').append(show_ing);
};
function errorIngredient (error) {
	console.log('You fail at life, brah.');
	console.log(error.responseText);
};