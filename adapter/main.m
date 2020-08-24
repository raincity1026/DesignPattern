//
//  main.m
//  adapter
//
//  Created by Dennis on 2020/8/25.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPObjectWithMistakeMethod : NSObject

- (void)meth0dName;

@end

@implementation DPObjectWithMistakeMethod

- (void)meth0dName {
    NSLog(@"Mistake method name: %@", NSStringFromSelector(_cmd));
}

@end

@interface DPObjectWithCorrectMethod : NSObject

- (void)methodName;

@end

@implementation DPObjectWithCorrectMethod

- (void)methodName {
    NSLog(@"Correct method name: %@", NSStringFromSelector(_cmd));
}

@end

@interface DPObjectWithMistakeMethodAdapter : DPObjectWithCorrectMethod {
    
}

@property (readwrite) DPObjectWithMistakeMethod *mistakeObject;
- (instancetype)initWithMistakeObject:(DPObjectWithMistakeMethod *)mistakeObject;

@end

@implementation DPObjectWithMistakeMethodAdapter

- (instancetype)initWithMistakeObject:(DPObjectWithMistakeMethod *)mistakeObject {
    if (self = [super init]) {
        if (mistakeObject == nil) {
            mistakeObject = [[DPObjectWithMistakeMethod alloc] init];
        }
        _mistakeObject = mistakeObject;
    }
    return self;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPObjectWithCorrectMethod *obj = [[DPObjectWithMistakeMethodAdapter alloc] init];
        [obj methodName];
    }
    return 0;
}
