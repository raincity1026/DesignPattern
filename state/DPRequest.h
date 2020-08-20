//
//  DPRequest.h
//  state
//
//  Created by Dennis on 2020/8/20.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPRequestState.h"

NS_ASSUME_NONNULL_BEGIN

@interface DPRequest : NSObject

@property (readwrite, nonatomic, strong) DPRequestState *state;

- (void)handleRequest;

@end

NS_ASSUME_NONNULL_END
