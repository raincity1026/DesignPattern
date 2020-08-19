//
//  DPLoginManager.h
//  observer
//
//  Created by Dennis on 2020/8/19.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPObservableSubject.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPLoginManager : NSObject <DPObservableSubject>

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password;

@end

NS_ASSUME_NONNULL_END
