//
//  DPOperation.h
//  simple-factory
//
//  Created by Dennis on 2020/8/14.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPOperation : NSObject

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2;

@end

@interface DPOperationAdd : DPOperation

@end

@interface DPOperationSubtract : DPOperation

@end

@interface DPOperationMultiply : DPOperation

@end

@interface DPOperationDivide : DPOperation

@end

NS_ASSUME_NONNULL_END
