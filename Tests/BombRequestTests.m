//
//  BombRequestTests.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <BombKit/BombRequest.h>

@interface BombRequestTests : XCTestCase

@end

@implementation BombRequestTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testBasicCalls {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Basic Calls"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                           builder:^(BombRequestBuilder *builder) {
                               builder.resource = @"game";
                               builder.resourceId = @"3030-4725";
                           }] makeRequestWithCompletion:^(id response) {
                               NSLog(@"%@", response);
                               
                               XCTAssertNotNil(response);
                               [expectation fulfill];
                           } failure:^(NSError *err) {
                               XCTFail(@"Should not fail with error %@", err);
                               [expectation fulfill];
                           }];
    
    [self waitForExpectationsWithTimeout:30
                                 handler:^(NSError * _Nullable error) {
                                     XCTAssertNil(error);
                                 }];
}

- (void)testSearch {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Search"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.isSearch = YES;
                                builder.query = @"metroid prime";
                                builder.resource = @"game";
                            }] makeRequestWithCompletion:^(id response) {
                                NSLog(@"%@", response);
                                
                                XCTAssertNotNil(response);
                                [expectation fulfill];
                            } failure:^(NSError *err) {
                                XCTFail(@"Should not fail with error %@", err);
                                [expectation fulfill];
                            }];
    
    [self waitForExpectationsWithTimeout:30
                                 handler:^(NSError * _Nullable error) {
                                     XCTAssertNil(error);
                                 }];
}

@end
