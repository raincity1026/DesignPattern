//
//  main.m
//  decorator
//
//  Created by Dennis on 2020/8/14.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPStringDecorator.h"
#import "NSString+DPDecoratedString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        id<DPDecoratedString> string = @"ABCDEFG1234567890";
        NSLog(@"string = %@", string);
        
        DPStringDecorator *decorator = [[DPStringDecorator alloc] initWithDecorateString:string];
        string = decorator.decoratedDescription;
        NSLog(@"string after decorate = %@", string);

        DPBase64StringDecorator *base64Decorator = [[DPBase64StringDecorator alloc] initWithDecorateString:string];
        string = base64Decorator.decoratedDescription;
        NSLog(@"string after base64 decorate = %@", string);
        
        DPMd5StringDecorator *md5Decorator = [[DPMd5StringDecorator alloc] initWithDecorateString:string];
        string = md5Decorator.decoratedDescription;
        NSLog(@"string after md5 decorate = %@", string);

    }
    return 0;
}
