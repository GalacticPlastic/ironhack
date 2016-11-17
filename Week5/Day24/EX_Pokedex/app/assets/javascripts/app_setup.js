$(document).on('ready', function () {
	PokemonApp.start();
});
window.PokemonApp = {};
// ONLY Global Variable for this app.
// Very specific name is important, so it can't be overwritten by external JS.
PokemonApp.start = function () {
	console.log("Yay, we're making a Pokedex, zomgggg!");
}