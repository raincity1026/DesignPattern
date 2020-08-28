//
//  DPCommand.h
//  command
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPCommandReceiver <NSObject>

@end

@interface DPCommand : NSObject

- (void)execute;
- (void)executeWithString:(NSString *)string;

@end

NS_ASSUME_NONNULL_END
