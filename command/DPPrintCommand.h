//
//  DPPrintCommand.h
//  command
//
//  Created by Dennis on 2020/8/29.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPCommand.h"

NS_ASSUME_NONNULL_BEGIN

@protocol DPPrintCommandReceiver <NSObject>

- (void)printWithString:(NSString *)string;

@end

@interface DPPrintCommand : DPCommand

@property (readwrite, nonatomic, strong) id<DPPrintCommandReceiver> receiver;

- (instancetype)initWithReceiver:(id<DPPrintCommandReceiver>)receiver;

@end

NS_ASSUME_NONNULL_END
