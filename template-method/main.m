//
//  main.m
//  template-method
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPDecorationTemplate.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPDeluxeDecorationTemplate *deluxe = [[DPDeluxeDecorationTemplate alloc] init];
        [deluxe decorate];
        
        DPSimpleDecorationTemplate *simple = [[DPSimpleDecorationTemplate alloc] init];
        [simple decorate];
    }
    return 0;
}
