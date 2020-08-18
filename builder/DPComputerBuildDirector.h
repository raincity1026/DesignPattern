//
//  DPComputerBuildDirector.h
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPComputerBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPComputerBuildDirector : NSObject

- (instancetype)initWithBuilder:(id<DPComputerBuilder>)builder;

- (void)build;

@end

NS_ASSUME_NONNULL_END
