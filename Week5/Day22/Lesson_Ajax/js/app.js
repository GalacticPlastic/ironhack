$(document).ready(function () {
	$('.js-fetch-char').on('click', fetchCharacters);
	$('.js-add-char').on('submit', addCharacters);
});
function fetchCharacters () {
	$.ajax ({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		// Last 2 keys in hash are separate callbacks for success and error.
		success: showCharacters,
		error: handleError,
		// Keep comma on last, same as CSS final semi-colon to prevent accidental  syntax mistake in future.
	});
}
function showCharacters (response) {
	console.log('Fetch Character Success!');
	// Test for Validation of Structure
	console.log(response);
	// Always print response. Every API has a different structure.

	$('.js-char-list').empty();
	// Prevents array from being duplicated with repeated button clicks.
	
	response.forEach(function (oneCharacter) {
		var charItem = `
			<tr>
				<th colspan="2"><strong>${oneCharacter.name}</strong></th>
				<th><em>ID:</em> ${oneCharacter.id}</th>
			</tr>
			<tr>
				<td><em>Weapon:</em> ${oneCharacter.weapon}</td>
				<td><em>Occupation:</em> ${oneCharacter.occupation}</td>
				<td><em>Debt:</em> ${oneCharacter.debt}</td>
			</tr>
		`;
		$('.js-char-list').append(charItem);
	});
}
function addCharacters (eventThing) {
	eventThing.preventDefault();
	var nameInput = $('.js-name').val();
	// if (nameInput === '') {
	// 	nameInput = 'Err..';
	// }
	// var occupationInput = $('.js-occupation').val();
	// if (occupationInput === '') {
	// 	occupationInput = 'Something';
	// }
	// var weaponInput = $('.js-weapon').val();
	// if (weaponInput === '') {
	// 	weaponInput = "I'm obviously not very clever.";
	// }
	// var charInfo = {
	// 	name: nameInput,
	// 	occupation: occupationInput,
	// 	weapon: weaponInput,
	// };
	$.ajax ({
		type: "POST",
		url: "https://ironhack-characters.herokuapp.com/characters",
		data: charInfo,
		success: addChar,
		error: handleError,
	});
}
function addChar (apiData) {
	console.log('apiData');
}
function handleError (error) {
	console.log('Fetch Character Error!');
	console.log(error.responseText);
}