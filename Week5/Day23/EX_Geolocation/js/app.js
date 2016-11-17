// console.log("Wiring Test");
$(document).ready(function () {
	locationPrompt();
	// beginWatch();
});
function locationPrompt () {
	if ('geolocation' in navigator) {
		// console.log("Geolocation functions are available.");
		navigator.geolocation.getCurrentPosition(mapLocation, mapError);
	} else {
		// console.log("Geolocation function not working.");
		var errorPrompt = `<p class="alert alert-danger">Unsupported Browser!</p>`;
		$('body').prepend(errorPrompt);
	}
}
function mapLocation (geoData) {
	// console.log("Yet another stupid confirmation test.");
	console.log(geoData);
	var mapLat = geoData.coords.latitude;
	var mapLong = geoData.coords.longitude;
	var imgURL = `
		<img src="https://maps.googleapis.com/maps/api/staticmap?zoom=18&size=550x500&center=${mapLat},${mapLong}">
	`;
	$('.imageMap').html(imgURL);
}
function mapError (errorMessage) {
	// console.log("Practice makes perfect! Nah, j/k, ERRORRR!!!");
	console.log(errorMessage);
	var errorMap = `<p class="alert alert-danger">Error retrieving location. <a class="js-retry">Try Again</a></p>`;
	$('body').prepend(errorMap);
}