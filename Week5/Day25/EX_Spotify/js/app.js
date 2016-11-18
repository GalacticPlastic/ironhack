$(document).ready(function () {
	$('#js-search-form').on('submit', fetchTrack);
	$('.btn-play').on('click', toggleAudio);
	$('.js-player').on('timeupdate', trackTime);
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
	$('.cover').html(`<img src="${trackCover}" alt="${trackTitle} by ${trackArtist}" />`);
	$('.title').text(trackTitle);
	$('.author').text(trackArtist);
	// console.log("potato");
	var trackAudio = trackSong.preview_url;
	$('audio').attr("src", `${trackAudio}`);
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
	// var trackProgress = ('Current time: ' + current);
	$('progress').attr("value", `${current}`);
};

function handleError (error) {
	console.log('You fail at life, brah.');
	console.log(error.responseText);
};