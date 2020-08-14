//
//  DPOperationFactory.h
//  simple-factory
//
//  Created by Dennis on 2020/8/14.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPOperation;

NS_ASSUME_NONNULL_BEGIN

@interface DPOperationFactory : NSObject

+ (DPOperation *)createOperation:(NSString *)operate;

@end

NS_ASSUME_NONNULL_END
