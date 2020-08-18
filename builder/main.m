//
//  main.m
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPComputerBuildDirector.h"
#import "DPAppleComputerBuilder.h"
#import "DPLenovoComputerBuilder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here... {
        id<DPComputerBuilder> appleBuilder = [[DPAppleComputerBuilder alloc] init];
        DPComputerBuildDirector *director = [[DPComputerBuildDirector alloc] initWithBuilder:appleBuilder];
        [director build];
        NSLog(@"Apple Computer = %@", appleBuilder.computer);
    }

    @autoreleasepool {
        id<DPComputerBuilder> lenovoBuilder = [[DPLenovoComputerBuilder alloc] init];
        DPComputerBuildDirector *director = [[DPComputerBuildDirector alloc] initWithBuilder:lenovoBuilder];
        [director build];
        NSLog(@"Lenovo Computer = %@", lenovoBuilder.computer);
    }
    return 0;
}
