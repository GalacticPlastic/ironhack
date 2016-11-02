// var numbers = '80:70:90:100';
// var numArray = numbers.split(":").map(function(n) {
// 	return Number(n);
// });
// numbers = numArray

var numbers = "80:70:90:100".split(/:|&/).map(function(n) {
	return Number(n);
});
function averageColon(numbers) {
	return numbers.reduce(function(total, num) {
		return total + num;
	}) / numbers.length;
}
console.log(averageColon(numbers) === 85 );

// BONUS Exercise! /////////////
// console.log(averageColon() === 0);
// console.log(averageColon('80&70&90&100') === 85);
// console.log(averageColon('80:70&90:100') === 85);