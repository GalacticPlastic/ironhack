// PokemonApp.Sprite = class {
// 	constructor (spritesArray) {
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

// console.log('Pokemon Sprites');
// var pokeSprites = apiResult.sprites;
// var spriteName = pokeSprites[0].name;
// var spriteLink = pokeSprites[0].resource_uri;
// $.ajax({
// 	type: "GET",
// 	url: `${spriteLink}`,
// 	success: PokemonApp.Sprite,
// 	error: PokemonApp.errorPopup,
// });
// PokemonApp.Sprite = function (response) {
// 	console.log('The sprite should be here!');
// 	// console.log(response);
// 	var spriteURL = response.image.split("/media/img/");
// 	var spriteNumber = spriteURL[1];
// 	$(".pm-name").prepend(`<img src="https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/${spriteNumber}?raw=true">`);
// };