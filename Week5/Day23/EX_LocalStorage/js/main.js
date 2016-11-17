$(document).ready(function () {
	loadDefaultColor();
	$color_button.on("click", changeColor);
}
var $color_button = $('.color-changer');
function changeColor(event) {
  // console.log("potato");
  var color = $(event.target).data('color');
  $("body").css('background-color', color);
  window.localStorage.setItem('bg-color', color);
}
$color_button.on("click", changeColor);
function loadDefaultColor() {
  if (window.localStorage.getItem("bg-color")) {
  	var savedColor = window.localStorage.getItem("bg-color");
    $("body").css("background-color", savedColor);
  }
}
// Audio/Video Controls
// Raw JS
var vid = document.querySelector('video');
var playButton = document.getElementById('play');
var pauseButton = document.getElementById('pause');
playButton.addEventListener('click', function() {
   vid.play();
});
pauseButton.addEventListener('click', function() {
  vid.pause();
})
// Returns the starting time (in seconds)
	vid.seekable.start(vid);
// Returns the ending time (in seconds)
	vid.seekable.end(vid);  
// Returns the current playback position
	vid.currentTime;     
// Seek to 20 seconds   
	vid.currentTime = 20;
// Returns time until which the video has played
	vid.played.end(vid);

// jQuery
$('#pause').on('click', function() {
  $('#vid1').trigger('pause');
});

var vid = $('#vid1');
// Output the current time whenever the timeupdate event occurs
	var current = $('#vid1').prop('currentTime');
	console.debug(current);
// Output every time the timeUpdate event fires
	$('#vid1').on('timeupdate', function(){
	  var current = $('#vid1').prop('currentTime');
	  console.debug(current);
	});
// Update the videos time to 20 seconds
	$('#vid1').prop('currentTime', 20);

