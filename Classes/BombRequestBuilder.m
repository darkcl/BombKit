//
//  BombRequestBuilder.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombRequestBuilder.h"

#import "NSError+BombKit.h"
#import "BombRequest.h"

@interface BombRequestBuilder() {
    NSString *baseURL;
    NSString *key;
    
    NSArray <NSString *> *resources;
}

@end

@implementation BombRequestBuilder

- (instancetype)initWithAPIKey:(NSString *)apiKey{
    if (self = [super init]) {
        baseURL = @"http://www.giantbomb.com/api/";
        key = apiKey;
        _isSearch = NO;
    }
    return self;
}

- (BombRequest *)build{
    return [[BombRequest alloc] initWithBuilder:self];
}

- (NSURL *)addParametersForBaseURL:(NSDictionary *)param forUrl:(NSString *)urlStr{
    NSURLComponents *components = [[NSURLComponents alloc] initWithURL:[NSURL URLWithString:urlStr] resolvingAgainstBaseURL:NO];
    
    NSMutableArray *queryItems = [[NSMutableArray alloc] init];
    
    for (NSString *aKey in param.allKeys) {
        NSURLQueryItem *anItem = [[NSURLQueryItem alloc] initWithName:aKey value:param[aKey]];
        [queryItems addObject:anItem];
    }
    [components setQueryItems:queryItems];
    return [components URL];
}

- (NSURLRequest *)request{
    if (!self.buildError) {
        if (_isSearch) {
            NSURL *url = [self addParametersForBaseURL:@{@"api_key": key,
                                                         @"format": @"json",
                                                         @"query": _query,
                                                         @"resources": _resource}
                                                forUrl:[NSString stringWithFormat:@"%@search/", baseURL]];
            return [NSURLRequest requestWithURL:url];
        }else{
            NSURL *url = [self addParametersForBaseURL:@{@"api_key": key,
                                                         @"format": @"json"}
                                                forUrl:[NSString stringWithFormat:@"%@%@/%@/", baseURL, _resource, _resourceId]];
            
            return [NSURLRequest requestWithURL:url];
        }
    }else{
        return nil;
    }
}

- (NSError *)buildError{
    NSError *resourceError = [NSError errorFromResourseTag:_resource];
    
    if (resourceError) {
        return resourceError;
    }else{
        return nil;
    }
}

@end
