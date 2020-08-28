//
//  DPApp.h
//  bridge
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPApp <NSObject>

- (void)run;

@end

@interface DPApp : NSObject <DPApp>

@end

@interface DPGame : DPApp

@end

@interface DPClock : DPApp

@end

NS_ASSUME_NONNULL_END
