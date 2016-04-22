//
//  BombKitCompanyModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"
#import "BombKitConstant.h"

/*
 abbreviation
 aliases
 characters
 concepts
 date_founded
 developed_games
 developer_releases
 distributor_releases
 location_address	Street address of the company.
 location_city	City the company resides in.
 location_country	Country the company resides in.
 location_address	Street address of the company.
 location_city	City the company resides in.
 location_country	Country the company resides in.
 location_state	State the company resides in.
 locations	Locations related to the company.
 objects	Objects related to the company.
 people	People who have worked with the company.
 phone	Phone number of the company.
 published_games	Games published by the company.
 publisher_releases	Releases the company has published.
 website	URL to the company website.
 */

@interface BombKitCompanyModel : BombBaseModel


/**
 * Abbreviation of the company.
 */
@property (nonatomic, strong) NSString *abbreviation;

/**
 * List of aliases the company is known by. A \n (newline) seperates each alias.
 */
@property (nonatomic, strong) NSString *aliases;

/**
 * Characters related to the company.
 */
@property (nonatomic, strong) NSString *characters;

/**
 * Concepts related to the company.
 */
@property (nonatomic, strong) NSString *concepts;

/**
 * Date the company was founded.
 */
@property (nonatomic, strong) NSString *dateFounded;

/**
 * Games the company has developed.
 */
@property (nonatomic, strong) NSString *developedGames;

/**
 * Releases the company has developed.
 */
@property (nonatomic, strong) NSString *distributorReleases;



@end
