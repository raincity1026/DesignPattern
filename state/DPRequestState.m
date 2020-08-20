//
//  DPRequestState.m
//  state
//
//  Created by Dennis on 2020/8/20.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPRequestState.h"
#import "DPRequest.h"

@interface DPRequestState ()

@property (readwrite, nonatomic, weak) DPRequest *request;

@end

@implementation DPRequestState

- (instancetype)initWithRequestContext:(DPRequest *)request {
    if (self = [super init]) {
        _request = request;
    }
    return self;
}

- (void)handleRequest {
    
}

@end

@implementation DPRequestInitializeState

- (void)handleRequest {
    self.request.state = [[DPRequestConnectingState alloc] initWithRequestContext:self.request];
}

@end

@implementation DPRequestConnectingState

- (void)handleRequest {
    NSLog(@"will request");
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        BOOL successed = ((arc4random() % 2) == 1);
        NSLog(@"did response, success: %@", successed ? @"YES" : @"NO");
        if (successed) {
            self.request.state = [[DPRequestSuccessState alloc] initWithRequestContext:self.request];
        } else {
            self.request.state = [[DPRequestFaileState alloc] initWithRequestContext:self.request];
        }
    });
}

@end

@implementation DPRequestSuccessState

- (void)handleRequest {
    NSLog(@"request success.");
}

@end

@implementation DPRequestFaileState

- (void)handleRequest {
    NSLog(@"request faile.");
}

@end
