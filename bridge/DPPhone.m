//
//  DPPhone.m
//  bridge
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPPhone.h"

@interface DPPhone () {
    id<DPApp> _app;
}

@end

@implementation DPPhone

- (void)setApp:(id<DPApp>)app {
    if (_app != app) {
        _app = app;
    }
}

- (id<DPApp>)app {
    return _app;
}

- (void)run {
    [_app run];
}

@end

@implementation DPiPhone

- (void)run {
    NSLog(@"=== Env: iPhone ===");
    [super run];
}

@end

@implementation DPaPhone

- (void)run {
    NSLog(@"=== Env: aPhone ===");
    [super run];
}

@end
