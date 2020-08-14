//
//  DPStringDecorator.h
//  decorator
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPDecoratedString.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPStringDecorator : NSObject <DPDecoratedString>

- (instancetype)initWithDecorateString:(id<DPDecoratedString>)string;

@end

@interface DPBase64StringDecorator : DPStringDecorator

@end

@interface DPMd5StringDecorator : DPStringDecorator

@end

NS_ASSUME_NONNULL_END
