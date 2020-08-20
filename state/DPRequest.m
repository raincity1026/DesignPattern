//
//  DPRequest.m
//  state
//
//  Created by Dennis on 2020/8/20.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPRequest.h"
#import "DPRequestState.h"

@implementation DPRequest

- (instancetype)init {
    if (self = [super init]) {
        _state = [[DPRequestInitializeState alloc] initWithRequestContext:self];
    }
    return self;
}

- (void)handleRequest {
    [_state handleRequest];
}

- (void)setState:(DPRequestState *)state {
    _state = state;
    [_state handleRequest];
}

@end
