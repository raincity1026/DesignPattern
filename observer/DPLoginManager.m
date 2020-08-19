//
//  DPLoginManager.m
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPLoginManager.h"
#import "DPObserverManager.h"

@interface DPLoginManager ()

@property (readwrite, nonatomic, strong) DPObserverManager *observersManager;

@end

@implementation DPLoginManager

- (instancetype)init {
    if (self = [super init]) {
        _observersManager = [[DPObserverManager alloc] init];
    }
    return self;
}

- (void)addObserver:(id<DPObserver>)observer {
    [_observersManager addObserver:observer];
}

- (void)removeObserver:(id<DPObserver>)observer {
    [_observersManager removeObserver:observer];
}

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password {
    __weak typeof(self) weakself = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        __strong typeof(weakself) strongself = weakself;
        [strongself.observersManager update];
    });
}


@end
