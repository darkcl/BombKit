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

- (NSURLRequest *)request{
    if (!self.buildError) {
        if (_isSearch) {
            NSString *urlString = [NSString stringWithFormat:@"%@search/?api_key=%@&format=json&query=\"%@\"&resources=%@", baseURL, key, _query, _resource];
            NSURL *url = [NSURL URLWithString:[urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLFragmentAllowedCharacterSet]]];
            return [NSURLRequest requestWithURL:url];
        }else{
            NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@%@/%@/?api_key=%@&format=json", baseURL, _resource, _resourceId, key]];
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
