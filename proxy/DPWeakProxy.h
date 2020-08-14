//
//  DPWeakProxy.h
//  proxy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPWeakProxy : NSProxy

@property (nullable, nonatomic, weak, readonly) id target;

- (instancetype)initWithTarget:(id)target;
+ (instancetype)proxyWithTarget:(id)target;

@end

NS_ASSUME_NONNULL_END
