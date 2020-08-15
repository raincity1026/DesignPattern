//
//  main.m
//  strategy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DPPlayerStrategy.h"
#import "DPPlayerController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSURL *URL = [NSURL URLWithString:@"https://www.google.com"];
        
        DPUltraPlayerStrategy *ultraplayer = [[DPUltraPlayerStrategy alloc] init];
        DPPlayerController *controller = [[DPPlayerController alloc] initWithPlayer:ultraplayer];
        if (![controller canPlayWithURL:URL]) {
            DPAVPlayerStrategy *avplayer = [[DPAVPlayerStrategy alloc] init];
            controller = [[DPPlayerController alloc] initWithPlayer:avplayer];
        }
        
        [controller playWithURL:URL];
        
    }
    return 0;
}
