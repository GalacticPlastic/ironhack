$(document).ready(function () {
	$('#js-search-form').on('submit', fetchArtists);
	$('.js-albums').on('click', modalAlbums);
});
function fetchArtists (eventThing) {
	eventThing.preventDefault();
	var userInput = $('.js-artist-name').val();
	console.log(userInput);
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&q=${userInput}`,
		success: artistList,
		error: handleError,
	});
}
function artistList (response) {
	// console.log ("Artist Response Success");
	console.log(response);
	var searchArtists = response.artists.items;
	var artistPic;
	searchArtists.forEach(function (anArtist) {
		if (anArtist.images.length === 0) {
			artistPic = 'https://cdn.pixabay.com/photo/2014/03/14/20/13/dog-287420_1280.jpg';
		} else {
			artistPic = anArtist.images[0].url;
		}
		var searchResults = `
			<div class="spotify-artist">
				<h3>${anArtist.name}</h3>
				<a class='js-albums' href='#' data-toggle="modal" data-target="#myModal"><img src='${artistPic}' /></a>
			</div>
		`;
		$("#spotify-results").prepend(searchResults);
	});
	$("#spotify-results").append(`<div class="clear"></div>`);
	// $('.cover').empty();
	// $('.cover').append(ArtistPic);
	// $('.author').text(searchArtists[].name);
}
function modalAlbums (dontRefresh) {
	dontRefresh.preventDefault();
}
function handleError (error) {
	console.log("Artist Response Error")
	console.log(error.responseText);
}