//
//  BombKitPromoModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitPromoModel.h"

@implementation BombKitPromoModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourcePromo;
}

+ (NSString *)listResourceType{
    return BombKitResourcePromos;
}

@end
