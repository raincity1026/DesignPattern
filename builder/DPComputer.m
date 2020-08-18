//
//  DPComputer.m
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPComputer.h"

@implementation DPComputer

- (NSString *)description {
    NSMutableString *desc = [[super description] mutableCopy];
    [desc appendFormat:@"<CPU: %@", _CPU];
    [desc appendFormat:@"<RAM: %@", _RAM];
    [desc appendFormat:@"<Displays: %@", _displays];
    return [desc copy];
}

@end
