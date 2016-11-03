console.log("");
for harley = {
	name: "Harley",
	breed: "German Shepherd",
	sound: "Woof?"

	chase: function() {
		console.log(`${this.name} is chasing cats.`);
	},
	bark: function() {
		console.log(this.sound);
	}
}
harley.chase();
harley.bark();
console.log("");
for bear = {
	name: "Bear",
	breed: "Border Collie",
	sound: "Uooooah"

	chase: function() {
		console.log(`${this.name} is chasing Harley.`);
	},
	bark: function() {
		console.log(this.sound);
	}
}
bear.chase();
bear.bark();
console.log("");
// "Object Literals." Dirty, dirty, redundant code.