//
//  DPUserDefaults.m
//  facade
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPUserDefaults.h"

@implementation DPUserDefaults

- (void)setObject:(nullable id)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
}

@end
