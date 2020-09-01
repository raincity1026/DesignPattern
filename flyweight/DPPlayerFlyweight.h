//
//  DPPlayerFlyweight.h
//  flyweight
//
//  Created by Dennis on 2020/9/1.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPPlayerFlyweight : NSObject

- (void)playWithURL:(NSURL *)URL;

@end

@interface DPAVPlayerFlyweight : DPPlayerFlyweight
@end

@interface DPUltraPlayerFlyweight : DPPlayerFlyweight
@end

NS_ASSUME_NONNULL_END
