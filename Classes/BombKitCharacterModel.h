//
//  BombKitCharacterModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "BombBaseModel.h"
#import "BombKitConstant.h"

@interface BombKitCharacterModel : BombBaseModel

/**
*  List of aliases the character is known by. A \n (newline) seperates each alias.
*/
@property (nonatomic, strong) NSString *aliases;

/**
 *  Birthday of the character.
 */
@property (nonatomic, strong) NSString *birthday;

/**
 *  Concepts related to the character.
 */
@property (nonatomic, strong) NSString *concepts;

/**
 *  Enemeis of the character.
 */
@property (nonatomic, strong) NSString *enemies;

/**
 *  Game where the character made its first appearance.
 */
@property (nonatomic, strong) BombBaseModel *firstAppearedInGame;

/**
 *  Franchises related to the character.
 */
@property (nonatomic, strong) NSString *franchises;

/**
 *  Friends of the character.
 */
@property (nonatomic, strong) NSString *friends;

/**
 *  Games the character has appeared in.
 */
@property (nonatomic, strong) NSString *games;

/**
 *  Gender of the character. Available options are: Male, Female, Other
 */
@property (nonatomic, strong) NSString *gender;

/**
 *  Last name of the character.
 */
@property (nonatomic, strong) NSString *lastName;

/**
 *  Locations related to the character.
 */
@property (nonatomic, strong) NSString *locations;

/**
 *  Objects related to the character.
 */
@property (nonatomic, strong) NSString *objects;

/**
 *  People who have worked with the character.
 */
@property (nonatomic, strong) NSString *people;

/**
 *  Real name of the character.
 */
@property (nonatomic, strong) NSString *realName;

@end
