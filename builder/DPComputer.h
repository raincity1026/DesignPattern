//
//  DPComputer.h
//  builder
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPComputer : NSObject

@property (readwrite, nonatomic, copy) NSString *CPU;
@property (readwrite, nonatomic, copy) NSString *RAM;
@property (readwrite, nonatomic, copy) NSArray<NSString *> *displays;

@end

NS_ASSUME_NONNULL_END
