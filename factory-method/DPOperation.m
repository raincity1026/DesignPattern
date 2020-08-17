//
//  DPOperation.m
//  simple-factory
//
//  Created by Dennis on 2020/8/14.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPOperation.h"

@implementation DPOperation

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2 {
    @throw [NSException exceptionWithName:@"Operation unfined." reason:@"You MUST override this method in subclass." userInfo:nil];
}

@end

@implementation DPOperationAdd

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2 {
    return number1 + number2;
}

@end

@implementation DPOperationSubtract

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2 {
    return number1 - number2;
}

@end

@implementation DPOperationMultiply

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2 {
    return number1 * number2;
}

@end

@implementation DPOperationDivide

- (CGFloat)doWithNumber:(CGFloat)number1 number2:(CGFloat)number2 {
    if (fabs(number2) < FLT_EPSILON) {
        @throw [NSException exceptionWithName:@"Unexpect parameter of number2" reason:@"divisor can't be zero" userInfo:nil];
        return 0;
    }
    return number1 / number2;
}

@end
