//
//  BombKitModelFactory.m
//  BombKit
//
//  Created by Yeung Yiu Hung on 14/4/2016.
//  Copyright © 2016 darkcl. All rights reserved.
//

#import "BombKitModelFactory.h"

#import <objc/runtime.h>

@implementation BombKitModelFactory

+ (BombKitModelFactory *)factory{
    static BombKitModelFactory *sharedFactory = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedFactory = [[self alloc] init];
    });
    return sharedFactory;
}

- (instancetype)init{
    if (self = [super init]) {
        int numClasses = objc_getClassList(NULL, 0);
        Class *classes = NULL;
        
        classes = (__unsafe_unretained Class *)malloc(sizeof(Class) * numClasses);
        numClasses = objc_getClassList(classes, numClasses);
        
        NSMutableArray *result = [NSMutableArray array];
        for (NSInteger i = 0; i < numClasses; i++)
        {
            Class superClass = classes[i];
            do
            {
                superClass = class_getSuperclass(superClass);
            } while(superClass && superClass != [BombBaseModel class]);
            
            if (superClass == nil)
            {
                continue;
            }
            
            [result addObject:classes[i]];
        }
        
        free(classes);
        
        _modelClasses = [NSArray arrayWithArray:result];
    }
    return self;
}

+ (id)modelForResourceTag:(NSString *)resource
             withResponse:(NSDictionary *)info{
    
    for (Class aClass in [[self factory] modelClasses]) {
        NSString *resourceTag = [aClass resourceType];
        if ([resourceTag isEqualToString:resource]) {
            NSLog(@"%@", resourceTag);
            return [[aClass alloc] initWithDictionary:info];
        }
    }
    
    return info;
}

@end
