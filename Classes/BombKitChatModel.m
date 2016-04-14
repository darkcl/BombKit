//
//  BombKitChatModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitChatModel.h"

@implementation BombKitChatModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
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
