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
    
    // Required
    NSString *key;
    NSArray <NSString *> *resources;
    
    // Additional Param
    NSDictionary <NSString *, NSString *> *sortDict;
    NSArray <NSDictionary <NSString *, NSString *> *> *filterList;
}

@end

@implementation BombRequestBuilder

- (instancetype)initWithAPIKey:(NSString *)apiKey{
    if (self = [super init]) {
        baseURL = @"http://www.giantbomb.com/api/";
        key = apiKey;
        _isSearch = NO;
        _limit = -1;
        _offset = -1;
    }
    return self;
}

- (void)addSortForField:(NSString *)field
                forType:(BombKitSortingType)sortType{
    sortDict = @{@"field": field,
                 @"sortBy": (sortType == BombKitSortingTypeAsc) ? @"asc" : @"desc"};
}

- (BombRequest *)build{
    return [[BombRequest alloc] initWithBuilder:self];
}

- (NSURL *)addParametersForBaseURL:(NSDictionary *)param forUrl:(NSString *)urlStr{
    NSURLComponents *components = [[NSURLComponents alloc] initWithURL:[NSURL URLWithString:urlStr] resolvingAgainstBaseURL:NO];
    
    NSMutableArray *queryItems = [[NSMutableArray alloc] init];
    
    for (NSString *aKey in param.allKeys) {
        if (![param[aKey] isKindOfClass:[NSNull class]]) {
            NSURLQueryItem *anItem = [[NSURLQueryItem alloc] initWithName:aKey value:param[aKey]];
            [queryItems addObject:anItem];
        }
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
            NSString *fieldListStr;
            if (_fieldsList != nil && _fieldsList.count != 0) {
                fieldListStr = [_fieldsList componentsJoinedByString:@","];
            }
            
            NSNumber *limitNum;
            if (_limit != -1) {
                limitNum = [NSNumber numberWithInteger:_limit];
            }
            
            NSNumber *offsetNum;
            if (_offset != -1) {
                offsetNum = [NSNumber numberWithInteger:_limit];
            }
            
            NSURL *url = [self addParametersForBaseURL:@{@"api_key": key,
                                                         @"format": @"json",
                                                         @"field_list": fieldListStr ? fieldListStr : [NSNull null],
                                                         @"limit": limitNum ? limitNum : [NSNull null],
                                                         @"offset": offsetNum ? offsetNum : [NSNull null],
                                                         @"sort": sortDict ? [NSString stringWithFormat:@"%@:%@", sortDict[@"field"], sortDict[@"sortBy"]] : [NSNull null]}
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
