"use strict";
class Viking {
	constructor (name, health, strength) {
		this.name = name;
		this.health = health;
		this.strength = strength;
	}
	// What can a viking do?
	// Attack anyone for the lulz. Valhalla!!
	attack (enemy) {
		return enemy.health - this.strength;
	}
}
module.exports = Viking;