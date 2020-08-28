//
//  DPApp.m
//  bridge
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPApp.h"

@implementation DPApp

- (void)run {}

@end


@implementation DPGame : DPApp

- (void)run {
    NSLog(@"Run Game");
}

@end

@implementation DPClock : DPApp

- (void)run {
    NSLog(@"Run Clock");
}

@end
