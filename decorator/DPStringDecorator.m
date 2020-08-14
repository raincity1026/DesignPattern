//
//  DPStringDecorator.m
//  decorator
//
//  Created by Dennis on 2020/8/15.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "NSString+MD5.h"

#import "DPStringDecorator.h"

@interface DPStringDecorator () {
    @protected
    id<DPDecoratedString> _string;
}

@end

#pragma mark - DPStringDecorator

@implementation DPStringDecorator

- (instancetype)initWithDecorateString:(id<DPDecoratedString>)string {
    if (self = [super init]) {
        _string = string;
    }
    return self;
}

- (NSString *)decoratedDescription {
    return _string.decoratedDescription;
}

@end

#pragma mark - DPBase64StringDecorateor

@implementation DPBase64StringDecorator

- (NSString *)decoratedDescription {
    NSString *base64String = [[_string.decoratedDescription dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    return base64String;
}

@end


#pragma mark - DPMd5StringDecorator

@implementation DPMd5StringDecorator

- (NSString *)decoratedDescription {
    return [_string.decoratedDescription MD5String];
}

@end
