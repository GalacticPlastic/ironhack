function nationality (nation, array) {
	var counter = 0;
	array.forEach(function (totalStudents) {
		if (totalStudents === nation) {
			counter += 1;
		}
	});
	return counter;
}
module.exports = nationality;


// NOTES: /////////////////////////////////////////

// Tells source script that the "nationality" function is what is being shared/called"
// JS function = Ruby class/method