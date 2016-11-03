"use strict";
var fs = require("fs");
var read = require("read");
console.log("");
console.log("START OF PROGRAM");

fs.readFile("./movies.txt", "utf8", function (error fileContents) {
	if (error) {
		console.log("Error! File could not be read.");
	} else {
		var movieList = fileContents.split("\n");
		console.log(movieList);
	}
});

function displayName (theError, inputName) {
	if (theError) { console.log("There was an error retreiving the input."); }
	else {
		console.log(`Welcome, user ${inputName}.`);
	}
}
// function displayName (firstArg, inputName) {
// 	console.log(`Welcome, user ${inputName}.`);
// }
// read({ prompt: "What is your name?" }, displayName);

function after5Seconds () {
	console.log("5 seconds");
}
setTimeout(after5Seconds, 5000);
// Program continues on w/o waiting for setTimeout to finish.

setTimeout(function () { console.log("2 seconds are up!") }, 2000);

// var i;

// firstArg is error for all asynchronous functions.
// Button clicks are asynchronous callbacks.
// Retrieving more posts/messages; etc. at end of line are also asynchronous callbacks.

console.log("");
console.log("END OF PROGRAM");
console.log("");


// Parse takes information from a string


