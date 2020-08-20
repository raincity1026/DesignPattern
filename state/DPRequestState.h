//
//  DPRequestState.h
//  state
//
//  Created by Dennis on 2020/8/20.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DPRequest;

NS_ASSUME_NONNULL_BEGIN

@protocol DPRequestState <NSObject>

- (void)handleRequest;

@end

@interface DPRequestState : NSObject <DPRequestState>

- (instancetype)initWithRequestContext:(DPRequest *)request;

@end

@interface DPRequestInitializeState : DPRequestState

@end

@interface DPRequestConnectingState : DPRequestState

@end

@interface DPRequestSuccessState : DPRequestState

@end

@interface DPRequestFaileState : DPRequestState

@end

@interface DPRequestRetryState : DPRequestState

@end

NS_ASSUME_NONNULL_END
