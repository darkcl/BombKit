//
//  BombBaseModel+Private.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 22/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel+Private.h"

@implementation BombBaseModel (Private)

- (NSString *)objectToString:(id)obj{
    if ([obj isKindOfClass:[NSString class]]) {
        return obj;
    }else if ([obj respondsToSelector:@selector(stringValue)]) {
        return [obj stringValue];
    }else if (obj == nil){
        return nil;
    }else{
        return [NSString stringWithFormat:@"%@", obj];
    }
}

@end
