//
//  BombKitGameRatingModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitGameRatingModel.h"

@implementation BombKitGameRatingModel

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
    return BombKitResourceGameRating;
}

+ (NSString *)listResourceType{
    return BombKitResourceGameRatings;
}

@end
