//
//  BombBaseModel.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombBaseModel.h"
#import "BombBaseModel+Private.h"

#import "BombKitImageModel.h"

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
    if (self = [super init]) {
        _apiDetailUrl = [self objectToString:info[@"api_detail_url"]];
        _dateAdded = [self objectToString:info[@"date_added"]];
        _dateLastUpdated = [self objectToString:info[@"date_last_updated"]];
        _resourceId = [self objectToString:info[@"id"]];
        _siteDetailUrl = [self objectToString:info[@"site_detail_url"]];
        _resourceDescription = [self objectToString:info[@"description"]];
        _deck = [self objectToString:info[@"deck"]];
        _name = [self objectToString:info[@"name"]];
        _image = [[BombKitImageModel alloc] initWithDictionary:info[@"image"]];
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
