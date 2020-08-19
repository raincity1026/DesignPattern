//
//  main.m
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DPLoginManager.h"
#import "DPLoginReferenceUI.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPLoginManager *loginManager = [[DPLoginManager alloc] init];
        DPLoginReferenceUI *ui = [[DPLoginReferenceUI alloc] init];
        [loginManager addObserver:ui];
        [loginManager loginWithUserName:@"username" password:@"password"];
        
        [[NSRunLoop currentRunLoop] run];
    }
    return 0;
}
