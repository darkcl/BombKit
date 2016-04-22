//
//  BombKitGameModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"
#import "BombKitConstant.h"

@interface BombKitGameModel : BombBaseModel

/*
 aliases	List of aliases the game is known by. A \n (newline) seperates each alias.
 api_detail_url	URL pointing to the game detail resource.
 characters	Characters related to the game.
 concepts	Concepts related to the game.
 date_added	Date the game was added to Giant Bomb.
 date_last_updated	Date the game was last updated on Giant Bomb.
 deck	Brief summary of the game.
 description	Description of the game.
 developers	Companies who developed the game.
 expected_release_day	Expected day the game will be released. The month is represented numerically. Combine with 'expected_release_day', 'expected_release_month', 'expected_release_year' and 'expected_release_quarter' for Giant Bomb's best guess release date of the game. These fields will be empty if the 'original_release_date' field is set.
 expected_release_month	Expected month the game will be released. The month is represented numerically. Combine with 'expected_release_day', 'expected_release_quarter' and 'expected_release_year' for Giant Bomb's best guess release date of the game. These fields will be empty if the 'original_release_date' field is set.
 expected_release_quarter	Expected quarter game will be released. The quarter is represented numerically, where 1 = Q1, 2 = Q2, 3 = Q3, and 4 = Q4. Combine with 'expected_release_day', 'expected_release_month' and 'expected_release_year' for Giant Bomb's best guess release date of the game. These fields will be empty if the 'original_release_date' field is set.
 expected_release_year	Expected year game will be released. Combine with 'expected_release_day', 'expected_release_month' and 'expected_release_quarter' for Giant Bomb's best guess release date of the game. These fields will be empty if the 'original_release_date' field is set.
 first_appearance_characters	Characters that first appeared in the game.
 first_appearance_concepts	Concepts that first appeared in the game.
 first_appearance_locations	Locations that first appeared in the game.
 first_appearance_objects	Objects that first appeared in the game.
 first_appearance_people	People that were first credited in the game.
 franchises	Franchises related to the game.
 genres	Genres that encompass the game.
 id	Unique ID of the game.
 image	Main image of the game.
 images	List of images associated to the game.
 killed_characters	Characters killed in the game.
 locations	Locations related to the game.
 name	Name of the game.
 number_of_user_reviews	Number of user reviews of the game on Giant Bomb.
 objects	Objects related to the game.
 original_game_rating	Rating of the first release of the game.
 original_release_date	Date the game was first released.
 people	People who have worked with the game.
 platforms	Platforms the game appeared in.
 publishers	Companies who published the game.
 releases	Releases of the game.
 reviews	Staff reviews of the game.
 similar_games	Other games similar to the game.
 site_detail_url	URL pointing to the game on Giant Bomb.
 themes	Themes that encompass the game.
 videos	Videos associated to the game.
 */

@end
