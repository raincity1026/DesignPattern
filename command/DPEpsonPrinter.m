//
//  DPEpsonPrinter.m
//  command
//
//  Created by Dennis on 2020/8/29.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPEpsonPrinter.h"

@implementation DPEpsonPrinter

- (void)printWithString:(NSString *)string {
    NSLog(@"%@ is printing %@", self.className, string);
}

@end
