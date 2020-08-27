//
//  main.m
//  singleton
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPSingleton *s1 = [[DPSingleton alloc] init];
        DPSingleton *s2 = [DPSingleton singleton];
        DPSingleton *s3 = [s1 copy];
        DPSingleton *s4 = [s2 copy];
        NSLog(@"s1 = %p", s1);
        NSLog(@"s2 = %p", s2);
        NSLog(@"s3 = %p", s3);
        NSLog(@"s4 = %p", s4);
    }
    return 0;
}
