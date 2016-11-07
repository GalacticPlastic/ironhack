function caesarCipher(message) {
	if (shift === undefined) {
		shift = -3;
	}
	// break up string into character array
	var letters = message.split("");
	var encoded = letters.map(function () {
		if (aLetter < "A" || (aLetter > "Z" && aLetter < "a") || aLetter > "z") {
			return aLetter;
		} else {
			var charOriginal = aLetter.charCodeAt(0);
			var charShift = charOriginal + shift;
			var encodedLetter = String.fromCharCode(charShift);
			return encodedLetter;
		}
	});
	return encoded.join("");
}
module.exports = caesarCipher;

// map character array to 3 places in ASCII chart
// if (message.charCodeAt(i)) {
// 	;
// }
// charCodeAt(i)

// capital letters are from 65 - 90.
// lowercase is from 97 - 122.