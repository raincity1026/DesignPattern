//
//  main.m
//  bridge
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPhone.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPiPhone *iPhone = [[DPiPhone alloc] init];
        DPaPhone *aPhone = [[DPaPhone alloc] init];
        
        DPGame *game = [[DPGame alloc] init];
        DPClock *clock = [[DPClock alloc] init];
        
        iPhone.app = game;
        [iPhone run];
        
        iPhone.app = clock;
        [iPhone run];
        
        aPhone.app = game;
        [aPhone run];
        
        aPhone.app = clock;
        [aPhone run];
    }
    return 0;
}
