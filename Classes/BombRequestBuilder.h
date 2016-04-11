//
//  BombRequestBuilder.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BombRequest;

@interface BombRequestBuilder : NSObject

@property (nonatomic, strong) NSString *resource;
@property (nonatomic, strong) NSString *resourceId;
@property BOOL isSearch;
@property (nonatomic, strong) NSString *query;
@property (nonatomic, strong) NSArray <NSString *> *fieldsList;

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithAPIKey:(NSString *)apiKey NS_DESIGNATED_INITIALIZER;

- (BombRequest *)build;
- (NSURLRequest *)request;
- (NSError *)buildError;

@end
