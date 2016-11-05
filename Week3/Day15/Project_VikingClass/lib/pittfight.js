"use strict";
class PittFight {
	constructor (attacker, defender) {
		this.attacker = attacker;
		this.defender = defender;
	}
	// What do I want the viking to do??
	// I want them to fight in the pitt!
	battle () {
		if(!(this.fighter1.health > 0 && this.fighter2.health > 0)){
                fighting = false;
            }
            else if(!(this.fighter1.health > this.fighter2.strength && this.fighter2.health > this.fighter1.strength)){
                fighting = false;
            }

            console.log(`|Health: ${f1Health}   |   ${f2Health}`);
            this.fighter2.health = this.fighter1.attack(this.fighter2);
            if(this.fighter2.health<=0 {
                f2Health = "DEAD";
            }else{
                f2Health = this.fighter2.health;
            }


            this.fighter1.health = this.fighter2.attack(this.fighter1);
            if(this.fighter1.health<=0){
                f1Health = "DEAD";
            }else{
                f1Health = this.fighter1.health;
            }


		// loop that applies damage, which reduces health
		// maximum number of turns
		// end if one viking is close to death. death > 0.
	}
}
module.exports = PittFight;