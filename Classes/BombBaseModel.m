//
//  BombBaseModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"

@interface BombBaseModel()

@property (nonatomic, strong) NSMutableArray *subclasses;

@end

@implementation BombBaseModel

+ (NSArray *)subclasses{
    return [self shared].subclasses;
}

+ (BombBaseModel*)shared
{
    static BombBaseModel *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

+ (void)registerClass:(Class)aClass{
    if ([NSStringFromClass(aClass) isEqualToString:@"BombBaseModel"]) {
        return;
    }else{
        [[self shared].subclasses addObject:aClass];
    }
}

- (instancetype)init{
    if (self = [super init]) {
        _subclasses = [[NSMutableArray alloc] init];
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
