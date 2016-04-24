//
//  BombKitCompanyModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitCompanyModel.h"
#import "BombBaseModel+Private.h"

@implementation BombKitCompanyModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super initWithDictionary:info]) {
        _abbreviation = [self objectToString:info[@"abbreviation"]];
        _aliases = [self objectToString:info[@"aliases"]];
        _characters = [self objectToString:info[@"characters"]];
        _concepts = [self objectToString:info[@"concepts"]];
        _dateFounded = [self objectToString:info[@"date_founded"]];
        _developedGames = [self objectToString:info[@"developed_games"]];
        _developerReleases = [self objectToString:info[@"developer_releases"]];
        _distributorReleases = [self objectToString:info[@"developer_releases"]];
        _locationAddress = [self objectToString:info[@"location_address"]];
        _locationCity = [self objectToString:info[@"location_city"]];
        _locationCountry = [self objectToString:info[@"location_city"]];
        _locationState = [self objectToString:info[@"location_state"]];
        _location = [self objectToString:info[@"locations"]];
        _objects = [self objectToString:info[@"objects"]];
        _people = [self objectToString:info[@"people"]];
        _phone = [self objectToString:info[@"phone"]];
        _publishedGames = [self objectToString:info[@"published_games"]];
        _publisherReleases = [self objectToString:info[@"publisher_releases"]];
        _website = [self objectToString:info[@"website"]];
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceCompany;
}

+ (NSString *)listResourceType{
    return BombKitResourceCompanies;
}

@end
