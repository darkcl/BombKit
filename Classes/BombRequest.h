//
//  BombRequest.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BombRequestBuilder.h"

@interface BombRequest : NSObject

- (instancetype)init NS_UNAVAILABLE;

- (instancetype)initWithBuilder:(BombRequestBuilder *)builder NS_DESIGNATED_INITIALIZER;

- (void)makeRequestWithCompletion:(void(^)(id response))complete
                          failure:(void(^)(NSError *err))failure;

+ (instancetype)requestWithAPIkey:(NSString *)apiKey
                          builder:(void(^)(BombRequestBuilder *builder))builderBlock;

@end
