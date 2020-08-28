//
//  DPPhone.h
//  bridge
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPApp.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPPhone <NSObject>

@property (readwrite, nonatomic, strong) id<DPApp> app;

- (void)run;

@end

@interface DPPhone : NSObject <DPPhone>

@end

@interface DPiPhone : DPPhone

@end

@interface DPaPhone : DPPhone

@end

NS_ASSUME_NONNULL_END
