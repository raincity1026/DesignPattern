//
//  DPPluginContext.h
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class DPPlugin;

@interface DPPluginContext : NSObject

- (void)sendMessage:(NSString *)message toPlugin:(NSString *)name withParams:(NSDictionary *)params from:(DPPlugin *)from;

@property (readonly) NSArray<DPPlugin *> *allPlugins;
- (void)addPlugin:(__kindof DPPlugin *)plugin;
- (void)removePlugin:(__kindof DPPlugin *)plugin;

@end

NS_ASSUME_NONNULL_END
