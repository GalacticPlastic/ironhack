$(document).ready(function () {
	$('.js-fetch-char').on('click', fetchCharacters);
});
function fetchCharacters () {
	$.ajax ({
		type: "GET",
		url: "https://ironhack-characters.herokuapp.com/characters",
		// Last 2 keys in hash are separate callbacks for success and error.
		success: showCharacters,
		error: handlError,
		// Keep comma on last, same as CSS final semi-colon to prevent accidental  syntax mistake in future.
	});
}
function showCharacters (response) {
	console.log('Fetch Character Success!');
	// Test for Validation of Structure
	console.log(response);
	// Always print response. Every API has a different structure.
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
function handlError (error) {
	console.log('Fetch Character Error!');
	console.log(error.responseText);
}