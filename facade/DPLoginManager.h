//
//  DPLoginManager.h
//  facade
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^DPLoginManagerCompletionHandler)(BOOL successed);

@interface DPLoginManager : NSObject

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password completion:(DPLoginManagerCompletionHandler)handler;

@end

NS_ASSUME_NONNULL_END
