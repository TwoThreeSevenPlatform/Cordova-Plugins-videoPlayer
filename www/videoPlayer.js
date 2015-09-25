var exec = require('cordova/exec');

function YoutubeVideoPlayer() {}

YoutubeVideoPlayer.prototype.openVideo = function(YTid,URL) {
	exec(function(result) { console.log(result); }, function(error) {console.log(error);}, "YoutubeVideoPlayer", "openVideo", [YTid,URL]);
}

var YoutubeVideoPlayer = new YoutubeVideoPlayer();
module.exports = YoutubeVideoPlayer