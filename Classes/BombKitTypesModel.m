//
//  BombKitTypesModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitTypesModel.h"

@implementation BombKitTypesModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

// TODO: To be test

+ (NSString *)resourceType{
    return BombKitResourceTypes;
}

+ (NSString *)listResourceType{
    return BombKitResourceTypes;
}

@end
