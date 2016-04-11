//
//  BombRequest.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombRequest.h"

#import "NSError+BombKit.h"

@interface BombRequest() {
    NSURLRequest *apiRequest;
    NSError *builderError;
}

@end

@implementation BombRequest

- (instancetype)initWithBuilder:(BombRequestBuilder *)builder{
    if (self = [super init]) {
        apiRequest = builder.request;
        builderError = builder.buildError;
    }
    return self;
}

+ (instancetype)requestWithAPIkey:(NSString *)apiKey
                          builder:(void(^)(BombRequestBuilder *builder))builderBlock{
    BombRequestBuilder *resquestBuilder = [[BombRequestBuilder alloc] initWithAPIKey:apiKey];
    builderBlock(resquestBuilder);
    
    return [resquestBuilder build];
}

- (void)makeRequestWithCompletion:(void(^)(id response))complete
                          failure:(void(^)(NSError *err))failure{
    if (!builderError) {
        NSURLSession *session = [NSURLSession sharedSession];
        NSURLSessionDataTask *task = [session dataTaskWithRequest:apiRequest
                                                completionHandler:
                                      ^(NSData *data, NSURLResponse *response, NSError *error) {
                                          if (!error) {
                                              NSError *jsonError;
                                              NSDictionary *responseDict = [NSJSONSerialization JSONObjectWithData:data
                                                                                                           options:NSJSONReadingAllowFragments
                                                                                                             error:&jsonError];
                                              if (!jsonError) {
                                                  NSError *responseError = [NSError errorFromResponse:responseDict];
                                                  if (!responseError) {
                                                      complete(responseDict);
                                                  }else{
                                                      failure(responseError);
                                                  }
                                              }else{
                                                  failure(error);
                                              }
                                          }else{
                                              failure(error);
                                          }
                                      }];
        
        [task resume];
    }else{
        failure(builderError);
    }
}

@end
