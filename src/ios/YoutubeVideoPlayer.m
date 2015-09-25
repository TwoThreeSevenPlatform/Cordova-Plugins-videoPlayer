//
//  YoutubeVideoPlayer.m
//
//  Created by Adrien Girbone on 15/04/2014.
//
//

#import "YoutubeVideoPlayer.h"
#import "XCDYouTubeKit.h"
#import <MediaPlayer/MediaPlayer.h>

@implementation YoutubeVideoPlayer

- (void)openVideo:(CDVInvokedUrlCommand*)command
{

    CDVPluginResult* pluginResult = nil;
    
    NSString* videoID  = [command.arguments objectAtIndex:0];
    NSString* videoURL = [command.arguments objectAtIndex:1];
    
    if (videoID != nil && ![videoID isEqualToString:@""]) {
        
        XCDYouTubeVideoPlayerViewController *videoPlayerViewController = [[XCDYouTubeVideoPlayerViewController alloc] initWithVideoIdentifier:videoID];
        [self.viewController presentMoviePlayerViewControllerAnimated:videoPlayerViewController];
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        
    } else if (videoURL != nil && ![videoURL isEqualToString:@""]) {
        
        NSURL *url = [NSURL URLWithString:videoURL];
        MPMoviePlayerViewController *c = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
        
        [self.viewController presentMoviePlayerViewControllerAnimated:c];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK];
        
    } else {
        
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Missing videoID Argument"];
        
    }
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
