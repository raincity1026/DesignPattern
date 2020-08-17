//
//  DPOperationFactory.h
//  factory-method
//
//  Created by Dennis on 2020/8/17.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPOperation.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPOperationFactory <NSObject>

+ (__kindof DPOperation *)createOperation;

@end


@interface DPAddOperationFactory : NSObject <DPOperationFactory>

@end

@interface DPSubtractOperationFactory : NSObject <DPOperationFactory>

@end

@interface DPMultiplyOperationFactory : NSObject <DPOperationFactory>

@end

@interface DPDivideOperationFactory : NSObject <DPOperationFactory>

@end


NS_ASSUME_NONNULL_END
