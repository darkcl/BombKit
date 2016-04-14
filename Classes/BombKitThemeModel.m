//
//  BombKitThemeModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitThemeModel.h"

@implementation BombKitThemeModel

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceTheme;
}

+ (NSString *)listResourceType{
    return BombKitResourceThemes;
}

@end
