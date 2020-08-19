//
//  DPObserver.h
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPObserver <NSObject>

- (void)update;

@end

NS_ASSUME_NONNULL_END
