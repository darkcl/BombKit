//
//  NSError+BombKit.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "NSError+BombKit.h"

NSString * const BombKitErrorDomain = @"com.darkcl.BombKit.error";

@implementation NSError (BombKit)

+ (NSError *)errorFromResponse:(NSDictionary *)response{
    NSInteger statusCode = [response[@"status_code"] integerValue];
    if (statusCode != 1) {
        return [NSError errorWithDomain:BombKitErrorDomain
                                   code:statusCode
                               userInfo:@{NSLocalizedDescriptionKey: response[@"error"]}];
    }else{
        return nil;
    }
}

@end
