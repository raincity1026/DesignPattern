//
//  DPSingleton.h
//  singleton
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPSingleton : NSObject <NSCopying>

+ (instancetype)singleton;

@end

NS_ASSUME_NONNULL_END
