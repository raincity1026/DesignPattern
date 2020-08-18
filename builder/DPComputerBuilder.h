//
//  DPComputerBuilder.h
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPComputer.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPComputerBuilder <NSObject>

- (void)buildCPU;
- (void)buildRAM;
- (void)buildDisplay;

@property (readonly) DPComputer *computer;

@end

NS_ASSUME_NONNULL_END
