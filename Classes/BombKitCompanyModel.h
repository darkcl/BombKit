//
//  BombKitCompanyModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"
#import "BombKitConstant.h"

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
 * Games the company has released.
 */
@property (nonatomic, strong) NSString *developerReleases;

/**
 * Releases the company has developed.
 */
@property (nonatomic, strong) NSString *distributorReleases;

/**
 *  Street address of the company.
 */
@property (nonatomic, strong) NSString *locationAddress;

/**
 *  City the company resides in.
 */
@property (nonatomic, strong) NSString *locationCity;

/**
 *  Country the company resides in.
 */
@property (nonatomic, strong) NSString *locationCountry;

/**
 *  State the company resides in.
 */
@property (nonatomic, strong) NSString *locationState;

/**
 *  Locations related to the company.
 */
@property (nonatomic, strong) NSString *location;

/**
 *  Objects related to the company.
 */
@property (nonatomic, strong) NSString *objects;

/**
 *  People who have worked with the company.
 */
@property (nonatomic, strong) NSString *people;

/**
 *  Phone number of the company.
 */
@property (nonatomic, strong) NSString *phone;

/**
 *  Games published by the company.
 */
@property (nonatomic, strong) NSString *publishedGames;

/**
 *  Releases the company has published.
 */
@property (nonatomic, strong) NSString *publisherReleases;

/**
 *  URL to the company website.
 */
@property (nonatomic, strong) NSString *website;


@end
