//
//  BombKitReleaseModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitReleaseModel.h"

@implementation BombKitReleaseModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceRelease;
}

+ (NSString *)listResourceType{
    return BombKitResourceReleases;
}

@end
