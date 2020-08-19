//
//  DPObserverManager.h
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPObserver.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPObserverManager : NSObject

- (void)addObserver:(id<DPObserver>)observer;
- (void)removeObserver:(id<DPObserver>)observer;

@property (readonly) NSArray<id<DPObserver>> *allObservers;

- (void)update;

@end

NS_ASSUME_NONNULL_END
