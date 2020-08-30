//
//  DPPlugin.m
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPlugin.h"

@interface DPPlugin () {
    __weak DPPluginContext *_context;
}

@end

@implementation DPPlugin

- (instancetype)initWithContext:(DPPluginContext *)context {
    if (self = [super init]) {
        _context = context;
    }
    return self;
}

- (DPPluginContext *)context {
    return _context;
}

- (void)receiveMessage:(NSString *)message withParams:(NSDictionary *)params from:(DPPlugin *)fromPlugin {}

@end
