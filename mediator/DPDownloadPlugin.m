//
//  DPDownloadPlugin.m
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPDownloadPlugin.h"

@implementation DPDownloadPlugin

- (NSString *)name {
    return @"Download";
}

- (void)receiveMessage:(NSString *)message withParams:(NSDictionary *)params from:(DPPlugin *)fromPlugin {
    NSLog(@"%@ receive message `%@` from %@", self, message, fromPlugin);
}

- (void)play {
    [self.context sendMessage:@"play" toPlugin:@"Play" withParams:@{} from:self];
}

@end
