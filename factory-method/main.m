//
//  main.m
//  factory-method
//
//  Created by Dennis on 2020/8/16.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPOperationFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPOperation *operationAdd = [DPAddOperationFactory createOperation];
        NSLog(@"1.0 + 2.0 = %.1f", [operationAdd doWithNumber:1.0f number2:2.0]);
        DPOperation *operationSubtract = [DPSubtractOperationFactory createOperation];
        NSLog(@"1.0 - 2.0 = %.1f", [operationSubtract doWithNumber:1.0f number2:2.0]);
        DPOperation *operationMultiply = [DPMultiplyOperationFactory createOperation];
        NSLog(@"1.0 x 2.0 = %.1f", [operationMultiply doWithNumber:1.0f number2:2.0]);
        DPOperation *operationDivide = [DPDivideOperationFactory createOperation];
        NSLog(@"1.0 ÷ 2.0 = %.1f", [operationDivide doWithNumber:1.0f number2:2.0]);

//        [operationDivide doWithNumber:1.0 number2:0.0];
//        [[[DPOperation alloc] init] doWithNumber:1.0 number2:2.0];

    }
    return 0;
}
