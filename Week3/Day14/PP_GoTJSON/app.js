var fs = require('fs');
function fileActions(err, file){ 
    if (err) {
        throw err;
    }
    var episodes = JSON.parse(file);
    var ordered = episodes.sort(function(a, b){
		  return a.episode_number - b.episode_number
		});

	function highRating(episode) {
		return episode.rating > 8.5;
	}
    var filtered = episodes.filter(highRating);
	// console.log(filtered);

	function searchFor() {

	}
//////////////// ORDERED ////////////////
	episodes.forEach (function (episode){
    	var aStar = "*";
    	var stars = aStar.repeat(Math.round (episode.rating));

    	console.log("");
    	console.log(`Title: ${episode.title}`);
    	console.log(episode.description);
    	console.log(`Rating: ${episode.rating} ${stars}`);
    });

//////////////// FILTERED ////////////////
    filtered.forEach (function (episode){
    	var aStar = "*";
    	var stars = aStar.repeat(Math.round (episode.rating));

    	console.log("");
    	console.log(`Title: ${episode.title}`);
    	console.log(episode.description);
    	console.log(`Rating: ${episode.rating} ${stars}`);
    });

//////////////// FIND SNOW ////////////////
	episodes.forEach (function (episode){
		var desc = episode.description;
    	var findSnow = desc.indexOf("Jon");
    	console.log(findSnow);
    });
    // console.log(episodes[0].title);
}
console.log("");
fs.readFile("./lib/GoTEpisodes.json", 'utf8', fileActions);
console.log("");

//.slice() preserves original variable