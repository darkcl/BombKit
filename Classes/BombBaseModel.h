//
//  BombBaseModel.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BombBaseModel : NSObject

- (instancetype)initWithDictionary:(NSDictionary *)info;

+ (NSString *)resourceType;
+ (NSString *)listResourceType;

@end
