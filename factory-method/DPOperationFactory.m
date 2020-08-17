//
//  DPOperationFactory.m
//  factory-method
//
//  Created by Dennis on 2020/8/17.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPOperationFactory.h"

@implementation DPAddOperationFactory : NSObject

+ (__kindof DPOperation *)createOperation {
    return [[DPOperationAdd alloc] init];
}

@end

@implementation DPSubtractOperationFactory : NSObject

+ (__kindof DPOperation *)createOperation {
    return [[DPOperationSubtract alloc] init];
}

@end

@implementation DPMultiplyOperationFactory : NSObject

+ (__kindof DPOperation *)createOperation {
    return [[DPOperationMultiply alloc] init];
}

@end

@implementation DPDivideOperationFactory : NSObject

+ (__kindof DPOperation *)createOperation {
    return [[DPOperationDivide alloc] init];
}

@end
