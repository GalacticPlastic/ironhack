"use strict";
class Viking {
	constructor (name, health, strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
	}
	// What do I want the viking to do??
	// I want them to fight in the pitt!
	method () {
		console.log(this.thing);
	}
}
module.exports = Viking;


// method PitFight {
// 	constructor (attacker, defender) {
// 		this.attacker = attacker;
// 		this.defender = defender;
// 	}
// }

// loop that applies damage, which reduces health
// maximum number of turns
// end if one viking is close to death. death > 0.