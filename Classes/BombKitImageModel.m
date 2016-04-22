//
//  BombKitImageModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 22/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitImageModel.h"
#import "BombBaseModel+Private.h"

@implementation BombKitImageModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        _iconUrl = [self objectToString:info[@"icon_url"]];
        _mediumUrl = [self objectToString:info[@"medium_url"]];
        _screenUrl = [self objectToString:info[@"screen_url"]];
        _smallUrl = [self objectToString:info[@"small_url"]];
        _superUrl = [self objectToString:info[@"super_url"]];
        _thumbUrl = [self objectToString:info[@"thumb_url"]];
        _tinyUrl = [self objectToString:info[@"tiny_url"]];
    }
    return self;
}

+ (NSString *)resourceType{
    return nil;
}

+ (NSString *)listResourceType{
    return nil;
}

@end
