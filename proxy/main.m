//
//  main.m
//  proxy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPWeakProxy.h"

@interface DPClock : NSObject

@property (readwrite, nonatomic, strong) NSTimer *timer;

@end

@implementation DPClock

- (instancetype)init {
    if (self = [super init]) {
        DPWeakProxy *proxy = [DPWeakProxy proxyWithTarget:self];
        _timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                  target:proxy  // if use `self` instead, DPClock will leak.
                                                selector:@selector(tick:)
                                                userInfo:nil
                                                 repeats:YES];
    }
    return self;
}

- (void)dealloc {
    NSLog(@"Clock Dealloc!!!");
}

- (void)tick:(NSTimer *)timer {
    NSLog(@"%@", [NSDate date]);
}

@end


int main(int argc, const char * argv[]) {
    static DPClock *clock = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        clock = [[DPClock alloc] init];
    });

    [[NSRunLoop currentRunLoop] runUntilDate:[[NSDate alloc] initWithTimeInterval:1 sinceDate:[NSDate date]]];
    
    clock = nil;

    return 0;
}
