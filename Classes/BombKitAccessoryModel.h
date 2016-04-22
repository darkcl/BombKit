//
//  BombKitAccessoryModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <BombKit/BombKit.h>

@class BombKitImageModel;
/*
 api_detail_url	URL pointing to the accessory detail resource.
 date_added	Date the accessory was added to Giant Bomb.
 date_last_updated	Date the accessory was last updated on Giant Bomb.
 deck	Brief summary of the accessory.
 description	Description of the accessory.
 id	Unique ID of the accessory.
 image	Main image of the accessory.
 name	Name of the accessory.
 site_detail_url	URL pointing to the accessory on Giant Bomb.
 */

@interface BombKitAccessoryModel : BombBaseModel

@property (nonatomic, strong) NSString *apiDetailUrl;
@property (nonatomic, strong) NSString *dateAdded;
@property (nonatomic, strong) NSString *dateLastUpdated;
@property (nonatomic, strong) NSString *deck;
@property (nonatomic, strong) NSString *accessoryDescription;
@property (nonatomic, strong) NSString *accessoryId;
@property (nonatomic, strong) BombKitImageModel *image;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *siteDetailUrl;

@end
