//
//  DPSingleton.m
//  singleton
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPSingleton.h"

static DPSingleton *sSingleton = nil;

@implementation DPSingleton

+ (instancetype)singleton {
    return sSingleton;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        DPSingleton *singleton = [[super allocWithZone:zone] init];
        sSingleton = singleton;
    });
    return sSingleton;
}

- (instancetype)init {
    if (sSingleton != nil) return sSingleton;
    
    if (self = [super init]) {
    }
    return self;
}

- (id)copyWithZone:(nullable NSZone *)zone {
    return sSingleton;
}


@end
