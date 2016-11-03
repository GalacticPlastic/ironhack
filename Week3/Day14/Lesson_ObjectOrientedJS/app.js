var Animal = require("./lib/animal.js")
console.log("");

var harley = new Animal("Harley", "German Shepherd", "Woof?");
harley.chase();
harley.bark();

console.log("");

var bear = new Animal("Bear", "Border Collie", "Uooooah");
bear.chase();
bear.bark();

console.log("");