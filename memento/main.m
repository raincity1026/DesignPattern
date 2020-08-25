//
//  main.m
//  memento
//
//  Created by Dennis on 2020/8/25.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPRoleStateMemonto : NSObject

@property (readwrite) NSInteger vit;
@property (readwrite) NSInteger atk;
@property (readwrite) NSInteger def;

- (instancetype)initWithVit:(NSInteger)vit atk:(NSInteger)atk def:(NSInteger)def;

@end

@implementation DPRoleStateMemonto

- (instancetype)initWithVit:(NSInteger)vit atk:(NSInteger)atk def:(NSInteger)def {
    if (self = [super init]) {
        _vit = vit;
        _atk = atk;
        _def = def;
    }
    return self;
}

@end

@interface DPGameRole : NSObject

@property (readwrite) NSInteger vit;
@property (readwrite) NSInteger atk;
@property (readwrite) NSInteger def;

- (DPRoleStateMemonto *)saveStates;

@end

@implementation DPGameRole

- (instancetype)init {
    if (self = [super init]) {
        _vit = 50;
        _atk = 80;
        _def = 100;
    }
    return self;
}

- (DPRoleStateMemonto *)saveStates {
    return [[DPRoleStateMemonto alloc] initWithVit:self.vit atk:self.atk def:self.def];
}

- (void)setStates:(DPRoleStateMemonto *)states {
    self.vit = states.vit;
    self.atk = states.atk;
    self.def = states.def;
}

@end

@interface DPRoleStateCaretaker : NSObject

@property (readwrite) DPRoleStateMemonto *momento;

@end

@implementation DPRoleStateCaretaker


@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPGameRole *role = [[DPGameRole alloc] init];
        
        DPRoleStateCaretaker *taker = [[DPRoleStateCaretaker alloc] init];
        taker.momento = [role saveStates];
        
        role.vit -= 100;
        role.atk -= 100;
        role.def -= 100;
        
        [role setStates:taker.momento];
    }
    return 0;
}
