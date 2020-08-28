//
//  DPPrintCommand.m
//  command
//
//  Created by Dennis on 2020/8/29.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPrintCommand.h"

@implementation DPPrintCommand

- (instancetype)initWithReceiver:(id<DPPrintCommandReceiver>)receiver {
    if (self = [super init]) {
        _receiver = receiver;
    }
    return self;
}

- (void)execute {
    [self.receiver printWithString:@""];
}

- (void)executeWithString:(NSString *)string {
    [self.receiver printWithString:string];
}

@end
