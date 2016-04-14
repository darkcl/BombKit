//
//  BombKitUserReviewModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitUserReviewModel.h"

@implementation BombKitUserReviewModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceUserReview;
}

+ (NSString *)listResourceType{
    return BombKitResourceUserReviews;
}

@end
