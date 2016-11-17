$(document).ready(function () {
	$('#js-search-form').on('submit', fetchArtists);
	$('#spotify-results').on('click', '.js-albums', fetchAlbums);
	// Event Delegation!!!! (Best Practice)
	// $('#myModal').on('shown.bs.modal', fetchAlbums);
	$('[data-toggle="tooltip"]').tooltip();
});
function fetchArtists (eventThing) {
	eventThing.preventDefault();
	var userInput = $('.js-artist-name').val();
	var userSearch = userInput.split(" ").join("+");
	// Preemptive cross-browser compatibility patch.
	console.log(userInput);
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/search?type=artist&q=${userSearch}`,
		success: listArtists,
		error: errorArtists,
	});
}
function listArtists (response) {
	// console.log ("Artist Response Success");
	console.log(response);
	var searchArtists = response.artists.items;
	searchArtists.forEach(function (anArtist) {
		var artistPic;
		if (anArtist.images.length === 0) {
			artistPic = 'http://geniusmindsystem.org/music_portal/movies/album-placeholder.png';
		} else {
			artistPic = anArtist.images[0].url;
		}
		var searchResults = `
			<div class="spotify-artist col-md-4">
				<h3>${anArtist.name}</h3>
				<a class="js-albums" data-toggle="modal" data-target="#myModal" data-artist-id="${anArtist.id}" data-artist-name="${anArtist.name}"><img class="img-responsive" src="${artistPic}" data-toggle="tooltip" title="${anArtist.id}" /></a>
			</div>
		`;
		$("#spotify-results").append(searchResults);
	});
}
function errorArtists (error) {
	// console.log("Artist Search Error")
	console.log(error.responseText);
}
function fetchAlbums (eventThing) {
	eventThing.preventDefault();
	// console.log("Fetch Album Test");
	var artistId = $(this).data('artist-id');
	$.ajax ({
		type: "GET",
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: listAlbums,
		error: errorAlbums,
	});
}
function listAlbums (response) {
	console.log("Artist Albums:");
	console.log(response);
	var artistAlbums = response.items;
	artistAlbums.forEach(function (anAlbum) {
		var albumPic;
		if (anAlbum.images.length === 0) {
			albumPic = 'http://geniusmindsystem.org/music_portal/movies/album-placeholder.png';
		} else {
			albumPic = anAlbum.images[0].url;
		}
		var albumArtist = anAlbum.artists[0].name;
		// var albumArtist = $('.js-albums').dataAttr('artist-id');
		// var albumArtist;
		// if (anAlbum.artists.length != 0) {
		// 	albumArtist = anAlbum.artists[0].name;
		// }
		var albumResults = `
			<a class="artist-album col-md-4">
				<img class="img-responsive" src="${albumPic}" alt="${anAlbum.name}" title="${anAlbum.name}" data-toggle="tooltip" />
			</a>
		`;
		$('.modal-title').html(`Albums for <strong>${albumArtist}</strong>`);
		$('.modal-body').append(albumResults);
	});
}
function errorAlbums (error) {
	// console.log("Album Search Error");
	console.log(error.responseText);
}