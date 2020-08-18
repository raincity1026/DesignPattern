//
//  DPAppleComputerBuilder.m
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPAppleComputerBuilder.h"
#import "DPComputer.h"

@interface DPAppleComputerBuilder ()

@property (readwrite, nonatomic, strong) DPComputer *computer;

@end

@implementation DPAppleComputerBuilder

- (void)buildCPU {
    self.computer.CPU = @"Apple CPU";
}

- (void)buildRAM {
    self.computer.RAM = @"Apple RAM";
}

- (void)buildDisplay {
    self.computer.displays = @[@"Apple Display"];
}

- (DPComputer *)computer {
    if (_computer == nil) {
        _computer = [[DPComputer alloc] init];
    }
    return _computer;
}

@end
