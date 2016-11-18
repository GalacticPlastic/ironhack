// PokemonApp.Description = class {
// 	constructor (descriptionsArray) {
// 		 = ;
// 	}
// 	render () {
// 		$.ajax({
// 			type: "GET",
// 			url: `${}`,
// 			success: ,
// 			error: PokemonApp.errorPopup,
// 		});
// 	}
// };
// // console.log(pokemonTypes);
// var pmType = "";
// pokemonTypes.forEach (function (aType) {
// 	pmType += aType.name + " ";
// });
// $(".pm-type").text(pmType);
// console.log('Pokemon Descriptions');
// // console.log('apiResult.descriptions');
// var pokemonDescriptions = apiResult.descriptions;
// function compare(a,b) {
// 	if (a.name > b.name)
// 		return -1;
// 	if (a.name < b.name)
// 		return 1;
// 	return 0;
// };
// pokemonDescriptions.sort(compare);
// var descriptionName = pokemonDescriptions[0].name;
// var descriptionLink = pokemonDescriptions[0].resource_uri;
// $.ajax({
// 	type: "GET",
// 	url: `${descriptionLink}`,
// 	success: PokemonApp.Description,
// 	error: PokemonApp.errorPopup,
// });

// PokemonApp.Description = function (response) {
// 	// console.log(response);
// 	$(".pm-description").text(response.description);
// };