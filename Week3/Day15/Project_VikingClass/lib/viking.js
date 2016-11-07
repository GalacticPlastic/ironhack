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
		attackDamage = enemy.health - this.strength;
		console.log(`${this.name} has dealt ${enemy.name} ${attackDamage} damage. ${enemy.name} has ${enemy.health} health remaining.`)
	}
}
module.exports = Viking;