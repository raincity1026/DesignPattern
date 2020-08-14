//
//  DPDecoratedString.h
//  decorator
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPDecoratedString <NSObject>

@property (readonly) NSString *decoratedDescription;

@end

NS_ASSUME_NONNULL_END
