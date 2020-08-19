//
//  DPObservableSubject.h
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPObserver.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPObservableSubject <NSObject>

- (void)addObserver:(id<DPObserver>)observer;
- (void)removeObserver:(id<DPObserver>)observer;

@end

NS_ASSUME_NONNULL_END
