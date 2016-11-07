"use strict";
var Viking = require("./lib/viking.js");
var PitFight = require("./lib/pitfight.js");
var Saxon = require("./lib/saxon.js");
var War = require("./lib/War.js");

var Zardoz = new Viking("Zardoz", 200, 10);
var Leif = new Viking("Leif", 180, 15);

// function intro1 () {
// 	console.log("");
// 	setTimeout(2000);
// }

function duel () {
	var thisPitFight = new PitFight();
	thisPitFight.initiate();
}