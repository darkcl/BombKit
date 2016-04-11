//
//  BombRequest.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombRequest.h"

#import "BombRequestBuilder.h"

@interface BombRequest()

@end

@implementation BombRequest

+ (instancetype)requestWithAPIkey:(NSString *)apiKey
                          builder:(void(^)(BombRequestBuilder *builder))builderBlock{
    BombRequestBuilder *resquestBuilder = [[BombRequestBuilder alloc] initWithAPIKey:apiKey];
    builderBlock(resquestBuilder);
    
    return [resquestBuilder build];
}

@end
