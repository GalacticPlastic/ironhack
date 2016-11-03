"use strict";
class Animal {
	// def initialize(name, breed, sound)
	constructor (name, breed, sound) {
		this.name = name;
		this.breed = breed;
		this.sound = sound;
	}
	// JS method equivalent
	chase () {
		console.log(`${this.name} is harassing the poor cat.`);
	}
	bark () {
		console.log(this.sound);
	}
}
module.exports = Animal;