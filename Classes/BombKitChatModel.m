//
//  BombKitChatModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitChatModel.h"
#import "BombBaseModel+Private.h"

@implementation BombKitChatModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super initWithDictionary:info]) {
        _channelName = [self objectToString:info[@"channel_name"]];
        _password = [self objectToString:info[@"password"]];
        _title = [self objectToString:info[@"title"]];
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceChat;
}

+ (NSString *)listResourceType{
    return BombKitResourceChats;
}

@end
