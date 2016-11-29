$(document).on("turbolinks:load", function () {
	// console.log("Test PoTaTo");
	$('.js-track-display').on('click', fetchTracks);
});
function fetchTracks () {
	// console.log("Test PoTaTo2");
	$.ajax({
		type: "GET",
		url: "/api/tracks",
		// data: ,
		success: displayTracks,
		error: handleError
	});
};
function displayTracks (response) {
	console.log("Success Potato!");
	console.log(response);
	$('.js-playlist').empty();
	response.forEach(function (song) {
		var track_details =
		`<li>
			<h3>${song.name}</h3>
			<p>By: <em>${song.artist}</em></p>
			<p>Album: ${song.album}</p>
			<p>Genre: ${song.genre}</p>
		</li>`
	});
};
function handleError (errorTrack) {
	console.log("You fail at life, brah.");
	console.log(errorTrack.responseText);
};