//
//  DPPluginContext.m
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPluginContext.h"
#import "DPPlugin.h"

@interface DPPluginContext () {
    NSMutableArray *_plugins;
}

@end

@implementation DPPluginContext

- (instancetype)init {
    if (self = [super init]) {
        _plugins = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)sendMessage:(NSString *)message toPlugin:(NSString *)name withParams:(NSDictionary *)params from:(nonnull DPPlugin *)from {
    for (DPPlugin *plugin in self.allPlugins) {
        if ([plugin.name isEqualToString:name]) {
            [plugin receiveMessage:message withParams:params from:from];
        }
    }
}

- (NSArray<DPPlugin *> *)allPlugins {
    return [_plugins copy];
}

- (void)addPlugin:(__kindof DPPlugin *)plugin {
    [_plugins addObject:plugin];
}

- (void)removePlugin:(__kindof DPPlugin *)plugin {
    [_plugins removeObject:plugin];
}

@end
