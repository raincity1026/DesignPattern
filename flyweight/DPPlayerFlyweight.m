//
//  DPPlayerFlyweight.m
//  flyweight
//
//  Created by Dennis on 2020/9/1.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlayerFlyweight.h"

@implementation DPPlayerFlyweight

- (void)playWithURL:(NSURL *)URL {}

@end

@implementation DPAVPlayerFlyweight

- (void)playWithURL:(NSURL *)URL {
    NSLog(@"%@ play with url %@", self, URL);
}

@end

@implementation DPUltraPlayerFlyweight

- (void)playWithURL:(NSURL *)URL {
    NSLog(@"%@ play with url %@", self, URL);
}

@end
