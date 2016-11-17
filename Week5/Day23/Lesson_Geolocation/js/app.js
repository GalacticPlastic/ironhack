// console.log("Wiring Test");		// Test
$(document).ready(function () {
	// console.log("Page Loaded");	// Test
	locationPrompt();
	beginWatch();
})
function locationPrompt () {
	if ('geolocation' in navigator) {
		// console.log("Geolocation functions are available.");
		var apiOptions = {
			enableHighAccuracy: true,
			timeout: 1000,
		}
		navigator.geolocation.getCurrentPosition(geoPosition, geoError, apiOptions);
	}
	else {
		// console.log("Geolocation functions are unavailable.");
		var errorAlert = `
			<div class="alert alert-danger" role="alert">
				<p>Your browser is currently unsupported. Please upgrade to the latest version.</p>
			</div>
		`;
		$('body').prepend(errorAlert);
	}
}
function geoPosition (geoData) {
	// console.log("Function geoPosition working.");
	console.log(geoData);
	$('.js-lat').html(geoData.coords.latitude);
	$('.js-long').html(geoData.coords.longitude);
}
function geoError (errorMessage) {
	// console.log("Error location not working.");
	console.log(errorMessage);
	var fetchError = `
		<div class="alert alert-danger" role="alert">
			<p>Sorry! There was an error retrieving your location.</p>
			<button class="js-retry">Try Again</button>
		</div>
	`;
	$('body').prepend(fetchError);
	$('.js-retry').on('click', function () {
		location.reload();
	});
}
function beginWatch () {
	if ('geolocation' in navigator) {
		navigator.geolocation.watchPosition(watchSuccess, watchError);
	}
}
function watchSuccess (watchData) {
	console.log("Watch location:");
	console.log(watchData);
	var watchItem = `
		<li>Latitude: ${watchData.coords.latitude}
		<br>Longitude: ${watchData.coords.longitude}</li>
	`;
	$('.js-watch').append(watchItem);
}
function watchError (errWatch) {
	console.log("Watch error:");
	console.log(errWatch);
}