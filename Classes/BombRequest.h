//
//  BombRequest.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BombRequestBuilder;

@interface BombRequest : NSObject

+ (instancetype)requestWithAPIkey:(NSString *)apiKey
                          builder:(void(^)(BombRequestBuilder *builder))builderBlock;

@end
