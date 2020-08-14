//
//  DPOperationFactory.m
//  simple-factory
//
//  Created by Dennis on 2020/8/14.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPOperationFactory.h"
#import "DPOperation.h"

@implementation DPOperationFactory

+ (DPOperation *)createOperation:(NSString *)operate {
    if ([operate isEqualToString:@"+"]) {
        return [[DPOperationAdd alloc] init];
    } else if ([operate isEqualToString:@"-"]) {
        return [[DPOperationSubtract alloc] init];
    } else if ([operate isEqualToString:@"x"]) {
        return [[DPOperationMultiply alloc] init];
    } else if ([operate isEqualToString:@"/"]) {
        return [[DPOperationDivide alloc] init];
    } else {
        return nil;
    }
}

@end
