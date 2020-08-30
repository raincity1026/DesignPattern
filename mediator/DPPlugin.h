//
//  DPPlugin.h
//  mediator
//
//  Created by Dennis on 2020/8/31.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPluginContext.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPPlugin : NSObject

@property (readonly) DPPluginContext *context;
@property (readonly) NSString *name;

- (instancetype)initWithContext:(DPPluginContext *)context;

- (void)receiveMessage:(NSString *)message withParams:(NSDictionary *)params from:(DPPlugin *)fromPlugin;

@end

NS_ASSUME_NONNULL_END
