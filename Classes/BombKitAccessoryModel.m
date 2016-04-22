//
//  BombKitAccessoryModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitAccessoryModel.h"
#import "BombBaseModel+Private.h"
#import "BombKitImageModel.h"

@implementation BombKitAccessoryModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        _apiDetailUrl = [self objectToString:info[@"api_detail_url"]];
        _dateAdded = [self objectToString:info[@"date_added"]];
        _dateLastUpdated = [self objectToString:info[@"date_last_updated"]];
        _deck = [self objectToString:info[@"deck"]];
        _accessoryDescription = [self objectToString:info[@"description"]];
        _accessoryId = [self objectToString:info[@"id"]];
        _image = [[BombKitImageModel alloc] initWithDictionary:info[@"image"]];
        _name = [self objectToString:info[@"name"]];
        _siteDetailUrl = [self objectToString:info[@"site_detail_url"]];
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceAccessory;
}

+ (NSString *)listResourceType{
    return BombKitResourceAccessories;
}

@end
