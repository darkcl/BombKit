//
//  BombKitVideoShowModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitVideoShowModel.h"

@implementation BombKitVideoShowModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceVideoShow;
}

+ (NSString *)listResourceType{
    return BombKitResourceVideoShows;
}

@end
