$(document).ready(function () {
	$('#js-search-form').on('submit', fetchTrack);
});
function fetchTrack (eventThing) {
	eventThing.preventDefault();
	var userInput = $('.js-track-search').val();
	console.log(userInput);
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&q=${userInput}`,
		success: songTrack,
		error: handleError,
	});
}
function songTrack (response) {
	console.log('Spotify Fetch Tracks Success!');
	console.log(response);
	console.log("potato");
	var trackSong = response.tracks.items[0];
	var trackArtist = trackSong.artists[0].name;
	var trackTitle = trackSong.name;
	var trackCover = trackSong.album.images[0].url;
	// var trackAudio = `
	// 	<img src="${trackArtist.external_urls.spotify}">
	// `;
	$('.cover').html(`<img src="${trackCover}" alt="${trackTitle} by ${trackArtist}" />`);
	$('.title').text(trackTitle);
	$('.author').text(trackArtist);
	// $('audio').empty();
	// $('audio').append(trackAudio);
}
function handleError (error) {
	console.log('Spotify Track Error!');
	console.log(error.responseText);
}