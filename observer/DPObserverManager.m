//
//  DPObserverManager.m
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPObserverManager.h"

@interface DPObserverManager ()

@property (readwrite, nonatomic, strong) NSHashTable<id<DPObserver>> *observers;
@property (readwrite, nonatomic, strong) NSLock *lock;

@end

@implementation DPObserverManager

- (instancetype)init {
    if (self = [super init]) {
        _observers = [NSHashTable hashTableWithOptions:NSPointerFunctionsWeakMemory];
        _lock = [[NSLock alloc] init];
    }
    return self;
}

- (void)addObserver:(id<DPObserver>)observer {
    if (observer == nil) {
        return;
    }
    
    [self.lock lock];
    if (![self.observers containsObject:observer]) {
        [self.observers addObject:observer];
    }
    [self.lock unlock];
}

- (void)removeObserver:(id<DPObserver>)observer {
    if (observer == nil) {
        return;
    }
    [self.lock lock];
    [self.observers removeObject:observer];
    [self.lock unlock];
}

- (NSArray<id<DPObserver>> *)allObservers {
    NSArray<id<DPObserver>> *allObservers = nil;

    [self.lock lock];
    allObservers = [self.observers allObjects];
    [self.lock unlock];

    return allObservers;
}

- (void)update {
    [self.allObservers makeObjectsPerformSelector:@selector(update)];
}

@end
