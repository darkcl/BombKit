//
//  BombKitChatModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"
#import "BombKitConstant.h"

@interface BombKitChatModel : BombBaseModel

/**
*  Name of the video streaming channel associated with the chat.
*/
@property (nonatomic, strong) NSString *channelName;

/**
 *  chat password.
 */
@property (nonatomic, strong) NSString *password;

/**
 *  Title of the chat.
 */
@property (nonatomic, strong) NSString *title;

@end
