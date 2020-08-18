//
//  DPLenovoComputerBuilder.m
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPLenovoComputerBuilder.h"
#import "DPComputer.h"

@interface DPLenovoComputerBuilder ()

@property (readwrite, nonatomic, strong) DPComputer *computer;

@end

@implementation DPLenovoComputerBuilder

- (void)buildCPU {
    self.computer.CPU = @"Lenovo CPU";
}

- (void)buildRAM {
    self.computer.RAM = @"Lenovo RAM";
}

- (void)buildDisplay {
    self.computer.displays = @[@"Lenovo Display"];
}

- (DPComputer *)computer {
    if (_computer == nil) {
        _computer = [[DPComputer alloc] init];
    }
    return _computer;
}

@end
