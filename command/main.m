//
//  main.m
//  command
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPrintCommand.h"
#import "DPEpsonPrinter.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPEpsonPrinter *printer = [[DPEpsonPrinter alloc] init];
        DPPrintCommand *command = [[DPPrintCommand alloc] initWithReceiver:printer];
        [command executeWithString:@"ppppp"];
    }
    return 0;
}
