//
//  DPLoginManager.m
//  facade
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPLoginManager.h"

@implementation DPLoginManager

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password completion:(DPLoginManagerCompletionHandler)handler {
    if (handler) {
        handler(YES);
    }
}

@end
