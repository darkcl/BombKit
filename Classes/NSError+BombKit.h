//
//  NSError+BombKit.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString * const BombKitErrorDomain;

@interface NSError (BombKit)

+ (NSError *)errorFromResponse:(NSDictionary *)response;

+ (NSError *)errorFromResourseTag:(NSString *)resource;

@end
