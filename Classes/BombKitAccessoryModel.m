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
    if (self = [super initWithDictionary:info]) {
        
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
