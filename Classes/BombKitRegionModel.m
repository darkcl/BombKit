//
//  BombKitRegionModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitRegionModel.h"

@implementation BombKitRegionModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceRegion;
}

+ (NSString *)listResourceType{
    return BombKitResourceRegions;
}

@end
