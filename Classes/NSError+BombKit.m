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

+ (NSError *)errorFromResourseTag:(NSString *)resource{
    NSArray *resources = @[@"accessory",
                           @"accessories",
                           @"character",
                           @"characters",
                           @"chat",
                           @"chats",
                           @"company",
                           @"companies",
                           @"concept",
                           @"concepts",
                           @"franchise",
                           @"franchises",
                           @"game",
                           @"games",
                           @"game_rating",
                           @"game_ratings",
                           @"genre",
                           @"genres",
                           @"location",
                           @"locations",
                           @"object",
                           @"objects",
                           @"person",
                           @"people",
                           @"platform",
                           @"platforms",
                           @"promo",
                           @"promos",
                           @"rating_board",
                           @"rating_boards",
                           @"region",
                           @"regions",
                           @"release",
                           @"releases",
                           @"review",
                           @"reviews",
                           @"theme",
                           @"themes",
                           @"types",
                           @"user_review",
                           @"user_reviews",
                           @"video",
                           @"videos",
                           @"video_type",
                           @"video_types",
                           @"video_show",
                           @"video_shows"];
    if (![resources containsObject:resource]) {
        return [NSError errorWithDomain:BombKitErrorDomain
                                   code:-1
                               userInfo:@{NSLocalizedDescriptionKey: [NSString stringWithFormat:@"Resource tags %@ not exists.", resource]}];
    }else{
        return nil;
    }
}

@end
