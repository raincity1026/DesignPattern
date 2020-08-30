//
//  DPPlayPlugin.m
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlayPlugin.h"

@implementation DPPlayPlugin

- (NSString *)name {
    return @"Play";
}

- (void)receiveMessage:(NSString *)message withParams:(NSDictionary *)params from:(DPPlugin *)fromPlugin {
    NSLog(@"%@ receive message `%@` from %@", self, message, fromPlugin);
}

- (void)download {
    [self.context sendMessage:@"download" toPlugin:@"Download" withParams:@{} from:self];
}

@end
