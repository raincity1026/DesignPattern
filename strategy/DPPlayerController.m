//
//  DPPlayerController.m
//  strategy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlayerStrategy.h"
#import "DPPlayerController.h"

@implementation DPPlayerController

- (instancetype)initWithPlayer:(DPPlayerStrategy *)player {
    if (self = [super init]) {
        _player = player;
    }
    return self;
}

- (void)playWithURL:(NSURL *)URL {
    [_player playWithURL:URL];
}

- (BOOL)canPlayWithURL:(NSURL *)URL {
    return [_player canPlayWithURL:URL];
}

@end
