//
//  DPLoginFacade.h
//  facade
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPLoginFacade : NSObject

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
