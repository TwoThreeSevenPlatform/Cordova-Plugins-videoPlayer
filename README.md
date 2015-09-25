#Cordova YoutubeVideoPlayer Plugin

**Play Youtube Videos and MP4s in a native Video Player on Android &amp; iOS.**

This is a fork of a plugin by Glitchbone
+ [http://github.com/Glitchbone](http://github.com/Glitchbone)

iOS plugin uses **XCDYouTubeKit** by Cédric Luthi:  
https://github.com/0xced/XCDYouTubeKit

Android version uses **OpenYoutubeActivity** by Keyes Labs:  
https://code.google.com/p/android-youtube-player

##Installation

```sh
cordova plugin add https://github.com/fan-si/Cordova-Plugins-videoPlayer.git
```

##Usage

YouTube Video
```
YoutubeVideoPlayer.openVideo('YOUTUBE_VIDEO_ID', '');
```

MP4 Video
```
YoutubeVideoPlayer.openVideo('', 'MP4 URL');
```

##Author

**Jack Read**

+ [https://fan.si](https://fan.si)

##License

CordovaYoutubeVideoPlayer is available under the MIT license. See the [LICENSE](LICENSE) file for more information.  
XCDYouTubeKit is available under the MIT license.  
OpenYoutubeActivity is available under the Apache License 2.0.  