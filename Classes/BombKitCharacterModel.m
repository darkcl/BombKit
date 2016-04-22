//
//  BombKitCharacterModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitCharacterModel.h"

#import "BombBaseModel+Private.h"

@implementation BombKitCharacterModel

+ (void)load
{
    [BombBaseModel registerClass:self];
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    if (self = [super initWithDictionary:info]) {
        _aliases = [self objectToString:info[@"aliases"]];
        _birthday = [self objectToString:info[@"birthday"]];
        _concepts = [self objectToString:info[@"concepts"]];
        _enemies = [self objectToString:info[@"enemies"]];
        _firstAppearedInGame = [[BombBaseModel alloc] initWithDictionary:info[@"first_appeared_in_game"]];
        _franchises = [self objectToString:info[@"franchises"]];
        _games = [self objectToString:info[@"games"]];
        _gender = [self objectToString:info[@"gender"]];
        _lastName = [self objectToString:info[@"last_name"]];
        _locations = [self objectToString:info[@"locations"]];
        _objects = [self objectToString:info[@"objects"]];
        _people = [self objectToString:info[@"people"]];
        _realName = [self objectToString:info[@"real_name"]];
    }
    return self;
}

+ (NSString *)resourceType{
    return BombKitResourceCharacter;
}

+ (NSString *)listResourceType{
    return BombKitResourceCharacters;
}

@end
