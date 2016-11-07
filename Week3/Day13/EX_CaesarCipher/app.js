"use strict";

var encryption = require("./lib/cipher.js");

var encrypted = caesarCipher("brutus");

console.log(encrypted);
//=> "_orqrp"



charCodeAt

var character = "A";

if (character >= "A" && character <= "Z") {
  console.log("The character is uppercase.");
} else {
  console.log("The character isn't uppercase.");
}

character = "!";

if (character >= "A" && character <= "Z") {
  console.log("The character is uppercase.");
} else {
  console.log("The character isn't uppercase.");
}



// var eightCipher = caesarBuilder(8);
// eightCipher("blah");
// encrypt("blah", 8);
// encrypt( , );
// currying