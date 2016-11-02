var nationality = require("./lib/count-countries.js");
var countries = [ "Puerto Rico", "Puerto Rico", "USA", "USA", "USA", "USA", "USA", "Nicaragua", "France", "Zimbabwe", "Mongolia", "Argentina", "Cuba", "Cuba", "Cuba", "Cuba", "Nigeria", "Haiti" ];
console.log("");
console.log("This Ironhack cohort comes from all over the world, including the following countries:");
console.log("--------------------------------------------------------------------------------------");
countries.forEach(function (country) {
	// console.log(" - " + country + "!");
	// New JS String Interpolation:
	console.log(` - ${country}!`);
});
console.log("");
console.log("SO MANY COUNTRIES ARE REPRESENTED IN THIS COHORT!!!!");
console.log("----------------------------------------------------");
var angryNations = countries.map(function (country) {
	return country.toUpperCase();
});
angryNations.forEach(function (country) {
	console.log(" - SOME ARE FROM " + country + "!!!");
})
console.log("");
console.log(nationality("USA", countries) === 5);
console.log(nationality("Puerto Rico", countries) === 2);
console.log(nationality("Cuba", countries) === 4);
console.log(nationality("Nicaragua", countries) === 1);
console.log(nationality("Japan", countries) === 0);
console.log("");


// NOTES: /////////////////////////////////////////

// Console is a built in method. Log is an object.
// It can receive infinite arguments.

// Ruby can invoke a method with or without parentheses. JS cannot!!
//       Ruby -> snake_case
// JavaScript -> camelCase
//    Classes -> ClassCase

// No implicit return in JS, unlike Ruby. Must insert "return" keyword.

// In require external script link, must use syntax require("./lib/count-countries.js"); with the ./ to identify a local file (Node-specific).