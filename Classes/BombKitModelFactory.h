//
//  BombKitModelFactory.h
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import <BombKit/BombKit.h>

@interface BombKitModelFactory : NSObject {
    
}

@property (nonatomic, strong) NSArray *modelClasses;

+ (id)modelForResourceTag:(NSString *)resource
             withResponse:(NSDictionary *)info;

@end
