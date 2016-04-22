//
//  BombBaseModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BombKitImageModel;

@interface BombBaseModel : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)info;

+ (void)registerClass:(Class)aClass;

+ (NSString *)resourceType;
+ (NSString *)listResourceType;

+ (NSArray *)subclasses;

/**
 *  URL pointing to the detail resource.
 */
@property (nonatomic, strong) NSString *apiDetailUrl;

/**
 *  URL pointing to the accessory on Giant Bomb.
 */
@property (nonatomic, strong) NSString *siteDetailUrl;

/**
 *  Date the resource was added to Giant Bomb.
 */
@property (nonatomic, strong) NSString *dateAdded;

/**
 *  Date the resource was last updated on Giant Bomb.
 */
@property (nonatomic, strong) NSString *dateLastUpdated;

/**
 *  Unique ID of the resource.
 */
@property (nonatomic, strong) NSString *resourceId;

/**
 *  Description of the resource.
 */
@property (nonatomic, strong) NSString *resourceDescription;

/**
 *  Brief summary of the resource.
 */
@property (nonatomic, strong) NSString *deck;

/**
 *  Name of the resource.
 */
@property (nonatomic, strong) NSString *name;

/**
 *  Main image of the resource.
 */
@property (nonatomic, strong) BombKitImageModel *image;

@end
