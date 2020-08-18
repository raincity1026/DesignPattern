//
//  DPLoginFacade.m
//  facade
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPLogger.h"

#import "DPLoginFacade.h"
#import "DPUserDefaults.h"
#import "DPLoginManager.h"

@interface DPLoginFacade() {
    DPLogger *_logger;
    DPUserDefaults *_configuration;
    DPLoginManager *_loginManager;
}

@end

@implementation DPLoginFacade

- (instancetype)init {
    if (self = [super init]) {
        _logger = [[DPLogger alloc] init];
        _configuration = [[DPUserDefaults alloc] init];
        _loginManager = [[DPLoginManager alloc] init];
    }
    return self;
}

- (void)loginWithUserName:(NSString *)userName password:(NSString *)password {
    [_logger log:[NSString stringWithFormat:@"will login with username `%@`", userName]];
    
    __weak typeof(self) weakself = self;
    [_loginManager loginWithUserName:userName password:password completion:^(BOOL successed) {
        __strong typeof(weakself) strongself = weakself;
        [strongself->_logger log:[NSString stringWithFormat:@"did login with username `%@`", userName]];
    }];
    
    [_configuration setObject:userName forKey:@"username"];
    [_configuration setObject:password forKey:@"password"];
}

@end
