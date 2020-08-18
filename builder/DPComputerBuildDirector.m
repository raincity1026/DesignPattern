//
//  DPComputerBuildDirector.m
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPComputerBuildDirector.h"

@interface DPComputerBuildDirector () {
    id<DPComputerBuilder> _builder;
}

@end

@implementation DPComputerBuildDirector

- (instancetype)initWithBuilder:(id<DPComputerBuilder>)builder {
    if (self = [super init]) {
        _builder = builder;
    }
    return self;
}

- (void)build {
    [_builder buildCPU];
    [_builder buildRAM];
    [_builder buildDisplay];
}

@end
