//
//  DPPlayerFlyweightFactory.h
//  flyweight
//
//  Created by Dennis on 2020/9/1.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPPlayerFlyweight.h"

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, DPPlayerType) {
    DPAVPlayerType,
    DPUltraPlayerType
};

@interface DPPlayerFlyweightFactory : NSObject

- (DPPlayerFlyweight *)playerWithType:(DPPlayerType)type;

@end

NS_ASSUME_NONNULL_END
