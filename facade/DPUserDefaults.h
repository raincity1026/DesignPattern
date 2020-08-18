//
//  DPUserDefalts.h
//  facade
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPUserDefaults : NSObject

- (void)setObject:(nullable id)value forKey:(NSString *)defaultName;

@end

NS_ASSUME_NONNULL_END
