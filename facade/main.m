//
//  main.m
//  facade
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPLoginFacade.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPLoginFacade *facade = [[DPLoginFacade alloc] init];
        [facade loginWithUserName:@"administrator" password:@"password"];
        
    }
    return 0;
}
