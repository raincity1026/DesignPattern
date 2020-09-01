//
//  DPPlayerFlyweightFactory.m
//  flyweight
//
//  Created by Dennis on 2020/9/1.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlayerFlyweightFactory.h"

@interface DPPlayerFlyweightFactory ()

@property (readwrite, nonatomic) DPAVPlayerFlyweight *avplayer;
@property (readwrite, nonatomic) DPUltraPlayerFlyweight *ultraplayer;

@end

@implementation DPPlayerFlyweightFactory

- (DPPlayerFlyweight *)playerWithType:(DPPlayerType)type {
    if (type == DPAVPlayerType) {
        return self.avplayer;
    } else if (type == DPUltraPlayerType) {
        return self.ultraplayer;
    }
    return nil;
}

- (DPAVPlayerFlyweight *)avplayer {
    if (_avplayer == nil) {
        _avplayer = [[DPAVPlayerFlyweight alloc] init];
    }
    return _avplayer;
}

- (DPUltraPlayerFlyweight *)ultraplayer {
    if (_ultraplayer == nil) {
        _ultraplayer = [[DPUltraPlayerFlyweight alloc] init];
    }
    return _ultraplayer;
}



@end
