//
//  DPPlayerStrategy.m
//  strategy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlayerStrategy.h"

@implementation DPPlayerStrategy

- (BOOL)canPlayWithURL:(NSURL *)URL {
    return NO;
}

- (void)playWithURL:(NSURL *)URL {
    @throw [NSException exceptionWithName:@"Operation unfined." reason:@"You MUST override this method in subclass." userInfo:nil];
}

@end


@implementation DPAVPlayerStrategy

- (BOOL)canPlayWithURL:(NSURL *)URL {
    return YES;
}

- (void)playWithURL:(NSURL *)URL {
    NSLog(@"AVPlayer play with URL = %@", URL);
}

@end

@implementation DPUltraPlayerStrategy

- (BOOL)canPlayWithURL:(NSURL *)URL {
    return URL != nil && [URL.scheme.lowercaseString isEqualToString:@"file"];
}

- (void)playWithURL:(NSURL *)URL {
    NSLog(@"UltraPlayer play with URL = %@", URL);
}

@end
