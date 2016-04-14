//
//  BombKitGameModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitGameModel.h"

@implementation BombKitGameModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceGame;
}

+ (NSString *)listResourceType{
    return BombKitResourceGames;
}

@end
