$(document).ready(function () {
	$('.js-show-pokemon').on('click', function () {
		var pokemonUri = $(this).data('pokemon-uri');
		var pokemon = new PokemonApp.Pokemon(pokemonUri);
		pokemon.render();
	});
});
PokemonApp.Pokemon = class {
	// constructor is a JS init
	constructor (pokemonUri) {
		this.apiUrl = pokemonUri;
	}
	// render = best practice naming convention, not integrated function of language.
	render () {
		$.ajax({
			type: "GET",
			url: `/${this.apiUrl}`,
			success: PokemonApp.showPopup,
			error: PokemonApp.errorPopup,
		});
	}
};
PokemonApp.showPopup = function (apiResult) {
	// Create individual components for refactoring:
	// var spriteComponent = new PokemonApp.Sprite(apiResult.sprites);
	// spriteComponent.render();
	// var descriptionComponent = new PokemonApp.Description(apiResult.descriptions);
	// descriptionComponent.render();
	// PokemonApp.prepareEvolutions(apiResult.evolutions);
	console.log(apiResult);
	$('.pm-id').text(apiResult.pkdx_id);
	$('.pm-name').append(apiResult.name);
	$('.pm-height').text(apiResult.height);
	$('.pm-weight').text(apiResult.weight);
	$('.pm-hp').text(apiResult.hp);
	$('.pm-attack').text(apiResult.attack);
	$('.pm-defense').text(apiResult.defense);
	$('.pm-spatk').text(apiResult.sp_atk);
	$('.pm-spdef').text(apiResult.sp_def);
	$('.pm-speed').text(apiResult.speed);
	var pokemonTypes = apiResult.types;
	var pmType = "";
	pokemonTypes.forEach (function (aType) {
		pmType += aType.name + " ";
	});
	$(".pm-type").text(pmType);
	console.log('Pokemon Descriptions');
	var pokemonDescriptions = apiResult.descriptions;
	function compare(a,b) {
	  if (a.name > b.name)
	    return -1;
	  if (a.name < b.name)
	    return 1;
	  return 0;
	};
	pokemonDescriptions.sort(compare);
	var descriptionName = pokemonDescriptions[0].name;
	var descriptionLink = pokemonDescriptions[0].resource_uri;
	$.ajax({
		type: "GET",
		url: `${descriptionLink}`,
		success: PokemonApp.Description,
		error: PokemonApp.errorPopup,
	});
	console.log('Pokemon Sprites');
	var pokeSprites = apiResult.sprites;
	var spriteName = pokeSprites[0].name;
	var spriteLink = pokeSprites[0].resource_uri;
	$.ajax({
		type: "GET",
		url: `${spriteLink}`,
		success: PokemonApp.Sprite,
		error: PokemonApp.errorPopup,
	});
	$('.js-pokemon-modal').modal('show');
};
PokemonApp.Description = function (response) {
	$(".pm-description").text(response.description);
};
PokemonApp.Sprite = function (response) {
	console.log('The sprite should be here!');
	// console.log(response);
	var spriteURL = response.image.split("/media/img/");
	var spriteNumber = spriteURL[1];
	$(".pm-name").prepend(`<img src="https://github.com/PokeAPI/sprites/blob/master/sprites/pokemon/${spriteNumber}?raw=true">`);
};
PokemonApp.errorPopup = function (errorResult) {
	console.log(errorResult.responseText);		// .responseText jQuery/ajax magic
};