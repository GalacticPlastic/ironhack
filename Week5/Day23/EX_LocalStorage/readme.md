Web Storage
---------------------
Cookies

- Must use JSON.stringify to save objects to localStorage.

```JavaScript
	var position = {
	  latitude: 41.3997748,
	  longitude: 2.159874
	}
	var stringifiedPosition = JSON.stringify(position);
	console.log(stringifiedPosition);
	window.localStorage.setItem("position", stringifiedPosition);
```

```JavaScript
var jsonifiedPostion = JSON.parse(window.localStorage.getItem("position"));
console.log(jsonifiedPostion.latitude);
// 41.3997748
```

Supported Audio / Video types

Audio	Video
MP3		mp4
ogg		ogg
wav		wav

Attributes
autoplay (boolean)	automatically start playing the audio/video
controls (boolean)	show play, pause, seek, volume controls
loop (boolean)		repeat the audio/video when it’s done playing
muted (boolean)		play the audio/video without sound