"use strict";
class Car {
	constructor (model, noise) {
		this.model = model;
		this.noise = noise;
		this.wheels = 4; // ??
	}
	sound () {
		console.log(this.noise);
	}
}
module.exports = Car;