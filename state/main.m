//
//  main.m
//  state
//
//  Created by Dennis on 2020/8/20.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPRequest.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DPRequest *req = [[DPRequest alloc] init];
        [req handleRequest];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
