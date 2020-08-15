//
//  DPPlayerController.h
//  strategy
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class DPPlayerStrategy;

@interface DPPlayerController : NSObject

@property (readonly) DPPlayerStrategy *player;

- (instancetype)initWithPlayer:(DPPlayerStrategy *)player;

- (BOOL)canPlayWithURL:(NSURL *)URL;
- (void)playWithURL:(NSURL *)URL;

@end

NS_ASSUME_NONNULL_END
