"use strict";
class PittFight {
	constructor (attacker, defender) {
		this.attacker = attacker;
		this.defender = defender;
	}
	// What do I want the viking to do??
	// I want them to fight in the pitt!
	battle () {
		if(!(this.attacker.health > 0 && this.defender.health > 0)){
                fighting = false;
            }
            else if(!(this.attacker.health > this.defender.strength && this.defender.health > this.attacker.strength)){
                fighting = false;
            }
            console.log(`|Health: ${attHealth}   |   ${defHealth}`);
            this.defender.health = this.attacker.attack(this.defender);
            if(this.defender.health<=0 {
                defHealth = "DEAD";
            }else{
                defHealth = this.defender.health;
            }
            this.attacker.health = this.defender.attack(this.attacker);
            if(this.attacker.health<=0){
                attHealth = "DEAD";
            }else{
                attHealth = this.attacker.health;
            }
		// loop that applies damage, which reduces health
		// maximum number of turns
		// end if one viking is close to death. death > 0.
	}
}
module.exports = PittFight;