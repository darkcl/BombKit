//
//  BombBaseModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"

@implementation BombBaseModel

- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)info{
    [NSException raise:NSInternalInconsistencyException
                format:@"You have not implemented %@ in %@", NSStringFromSelector(_cmd), NSStringFromClass([self class])];
    if (self = [super init]) {
        
    }
    return self;
}

+ (NSString *)resourceType{
    [NSException raise:NSInternalInconsistencyException
                format:@"You have not implemented %@ in %@", NSStringFromSelector(_cmd), NSStringFromClass([self class])];
    return nil;
}

+ (NSString *)listResourceType{
    [NSException raise:NSInternalInconsistencyException
                format:@"You have not implemented %@ in %@", NSStringFromSelector(_cmd), NSStringFromClass([self class])];
    return nil;
}

@end
