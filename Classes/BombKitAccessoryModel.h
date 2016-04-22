//
//  BombKitAccessoryModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <BombKit/BombKit.h>

@class BombKitImageModel;

@interface BombKitAccessoryModel : BombBaseModel

/**
 *  URL pointing to the accessory detail resource.
 */
@property (nonatomic, strong) NSString *apiDetailUrl;

/**
 *  Date the accessory was added to Giant Bomb.
 */
@property (nonatomic, strong) NSString *dateAdded;

/**
 *  Date the accessory was last updated on Giant Bomb.
 */
@property (nonatomic, strong) NSString *dateLastUpdated;

/**
 *  Brief summary of the accessory.
 */
@property (nonatomic, strong) NSString *deck;

/**
 *  Description of the accessory.
 */
@property (nonatomic, strong) NSString *accessoryDescription;

/**
 *  Unique ID of the accessory.
 */
@property (nonatomic, strong) NSString *accessoryId;

/**
 *  Main image of the accessory.
 */
@property (nonatomic, strong) BombKitImageModel *image;

/**
 *  Name of the accessory.
 */
@property (nonatomic, strong) NSString *name;

/**
 *  URL pointing to the accessory on Giant Bomb.
 */
@property (nonatomic, strong) NSString *siteDetailUrl;

@end
