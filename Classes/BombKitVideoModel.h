//
//  BombKitVideoModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <BombKit/BombKit.h>

@interface BombKitVideoModel : BombBaseModel

/*
 api_detail_url	URL pointing to the video detail resource.
 deck	Brief summary of the video.
 hd_url	URL to the HD version of the video.
 This URL will not be usable from a web-browser.
 You must use our embed player to play our videos on any other web site. See embed_player below.
 For apps you must have a registered User Agent to load and play our videos. Contact edgework@giantbomb.com to do that
 high_url	URL to the High Res version of the video.
 This URL will not be usable from a web-browser.
 You must use our embed player to play our videos on any other web site. See embed_player below.
 For apps you must have a registered User Agent to load and play our videos. Contact edgework@giantbomb.com to do that
 low_url	URL to the Low Res version of the video.
 This URL will not be usable from a web-browser.
 You must use our embed player to play our videos on any other web site. See embed_player below.
 For apps you must have a registered User Agent to load and play our videos. Contact edgework@giantbomb.com to do that
 embed_player	URL for video embed player. To be inserted into an iFrame.
 You can add ?autoplay=true to auto-play.
 You can add ?time=x where 'x' is an integer between 0 and the length of the video in seconds to start the video at that point.
 You can add ?vol=x where 'x' is a decimal between 0 and 1, .75 for example, to set the starting volume.
 The above three parameters may be used together. Example: ?time=45&vol=.5&autoplay=true
 See http://www.giantbomb.com/api/video-embed-sample/ for more information on using the embed player.
 id	Unique ID of the video.
 image	Main image of the video.
 length_seconds	Length (in seconds) of the video.
 name	Name of the video.
 publish_date	Date the video was published on Giant Bomb.
 site_detail_url	URL pointing to the video on Giant Bomb.
 url	The video's filename.
 user	Author of the video.
 youtube_id	Youtube ID for the video.
 */

@end
