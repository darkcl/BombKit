//
//  BombRequestTests.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 11/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <BombKit/BombKit.h>

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

- (void)testSortingDesc {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Sorting Descending"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.resource = BombKitResourceConcepts;
                                builder.limit = 10;
                                [builder addSortForField:@"date_added" forType:BombKitSortingTypeDesc];
                            }] makeRequestWithCompletion:^(id response) {
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

- (void)testSorting {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Sorting"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.resource = BombKitResourceConcepts;
                                builder.limit = 10;
                                [builder addSortForField:@"date_added" forType:BombKitSortingTypeAsc];
                            }] makeRequestWithCompletion:^(id response) {
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

- (void)testBasicCalls {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Basic Calls"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                           builder:^(BombRequestBuilder *builder) {
                               builder.resource = BombKitResourceGame;
                               builder.limit = 10;
                               builder.fieldsList = @[@"description"];
                               builder.resourceId = @"3030-4725";
                           }] makeRequestWithCompletion:^(id response) {
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
                                builder.resource = BombKitResourceGame;
                            }] makeRequestWithCompletion:^(id response) {
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

- (void)testModelClass {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Search"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.resource = BombKitResourceGame;
                                builder.limit = 1;
                                builder.resourceId = @"3030-4725";
                            }] makeRequestWithCompletion:^(id response) {
                                XCTAssertNotNil(response);
                                XCTAssertTrue([response isKindOfClass:[BombKitGameModel class]], @"Should be BombKitGameModel class, %@", NSStringFromClass([response class]));
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

- (void)testModelList {
    XCTestExpectation *expectation = [self expectationWithDescription:@"Model List"];
    
    [[BombRequest requestWithAPIkey:@"6402935262fb3a5d65042267e7eb4ef24bc7727a"
                            builder:^(BombRequestBuilder *builder) {
                                builder.resource = BombKitResourceAccessories;
                                builder.limit = 10;
                            }] makeRequestWithCompletion:^(id response) {
                                XCTAssertNotNil(response);
                                XCTAssertTrue([response isKindOfClass:[NSArray class]], @"Should be NSArray class, %@", NSStringFromClass([response class]));
                                NSArray *anArray = (NSArray *)response;
                                for (id obj in anArray) {
                                    XCTAssertTrue([obj isKindOfClass:[BombKitAccessoryModel class]], @"Should be BombKitAccessoryModel class, %@", NSStringFromClass([obj class]));
                                }
                                
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
