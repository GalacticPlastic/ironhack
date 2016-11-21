$(document).ready(function () {
	$('#js-search-form').on('submit', fetchTrack);
	$('.btn-play').on('click', toggleAudio);
	$('.js-player').on('timeupdate', trackTime);
	$('.author').on('click', fetchArtist);
	$('.js-more').on('click', searchResults);
});
function fetchTrack (eventThing) {
	eventThing.preventDefault();
	var userInput = $('.js-track-search').val();
	console.log(`Search term: ${userInput}`);
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=track&q=${userInput}`,
		success: songTrack,
		error: handleError,
	});
};
function songTrack (response) {
	console.log(response);
	var trackSong = response.tracks.items[0];
	var trackArtist = trackSong.artists[0].name;
	var trackTitle = trackSong.name;
	var trackCover = trackSong.album.images[0].url;
	var trackAudio = trackSong.preview_url;
	$('.cover img').attr("src", `${trackCover}`);
	$('.cover img').attr("alt", `${trackTitle} by ${trackArtist}`);
	$('.title').text(trackTitle);
	$('.author').text(trackArtist);
	$('audio').attr("src", `${trackAudio}`);
	$('.author').attr("data-artist-id", `${trackSong.artists[0].id}`);
	$('.btn-play').removeClass('disabled');
};
function toggleAudio () {
	if ($('.btn-play').hasClass('playing')) {
		$('.js-player').trigger('pause');
	} else {
		$('.js-player').trigger('play');
	}
	$('.btn-play').toggleClass('playing');
}
function trackTime () {
	var current = $('.js-player').prop('currentTime');
	$('progress').attr("value", `${current}`);
};
function fetchArtist () {
	var artistId = $(this).data('artist-id');
	console.log(`Song Artist ID: ${artistId}`);
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}`,
		success: songArtist,
		error: handleError,
	});
};
function songArtist (response) {
	console.log('Po-po-potato!');
	console.log(response);
	var artistImage = response.images[0].url;		// Array, dammit
	var artistGenres = response.genres.join(", ");	// Array, dammit
	$('#artist-modal').modal('show');
	$('.js-modal-artist').text(response.name);
	$('.js-photo').attr("src", `${artistImage}`);
	$('.js-genres').text(artistGenres);
	$('.js-followers').text(response.followers.total);
	$('.js-popularity').text(response.popularity);
};
function searchResults () {
	eventThing.preventDefault();
	var userInput = $('.js-track-search').val();
	console.log(`Search term: ${userInput}`);
	$.ajax ({
		type: "GET",
	// 	url: `https://api.spotify.com/v1/search?type=track&q=${userInput}`,
		success: listTracks,
		error: handleError,
	});
};
// function listTracks (response) {
	
// };
function handleError (error) {
	console.log('You fail at life, brah.');
	console.log(error.responseText);
};