//
//  DPPlayerStrategy.h
//  strategy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPPlayerStrategy : NSObject

- (BOOL)canPlayWithURL:(NSURL *)URL;
- (void)playWithURL:(NSURL *)URL;

@end

@interface DPAVPlayerStrategy : DPPlayerStrategy

@end

@interface DPUltraPlayerStrategy : DPPlayerStrategy

@end

NS_ASSUME_NONNULL_END
