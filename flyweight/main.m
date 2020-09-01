//
//  main.m
//  flyweight
//
//  Created by Dennis on 2020/9/1.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPlayerFlyweightFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPPlayerFlyweightFactory *factory = [[DPPlayerFlyweightFactory alloc] init];
        [[factory playerWithType:DPAVPlayerType] playWithURL:[NSURL URLWithString:@"http://www.google.com"]];
        [[factory playerWithType:DPUltraPlayerType] playWithURL:[NSURL URLWithString:@"http://www.google.com"]];
        [[factory playerWithType:DPAVPlayerType] playWithURL:[NSURL URLWithString:@"http://www.google.com"]];
        [[factory playerWithType:DPUltraPlayerType] playWithURL:[NSURL URLWithString:@"http://www.google.com"]];
    }
    return 0;
}
