//
//  DPDecorationTemplate.h
//  template-method
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DPDecorationTemplate : NSObject

#pragma mark - Template Method
- (void)decorate;

#pragma mark - Operation
- (NSString *)woodfloor;

- (NSString *)tile;

- (NSString *)bathtab;

@end

@interface DPDeluxeDecorationTemplate : DPDecorationTemplate

@end

@interface DPSimpleDecorationTemplate : DPDecorationTemplate

@end


NS_ASSUME_NONNULL_END
