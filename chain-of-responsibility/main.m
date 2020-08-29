//
//  main.m
//  chain-of-responsibility
//
//  Created by Dennis on 2020/8/29.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark - DPEvent

@interface DPEvent : NSObject

@property (readwrite, nonatomic, copy) NSString *eventName;

- (instancetype)initWithEventName:(NSString *)eventName;

@end

@implementation DPEvent

- (instancetype)initWithEventName:(NSString *)eventName {
    if (self = [super init]) {
        _eventName = [eventName copy];
    }
    return self;
}

@end

#pragma mark - DPResponder

@protocol DPResponder <NSObject>

@property (readwrite, nonatomic, strong) id<DPResponder> nextResponder;

- (void)handleEvent:(DPEvent *)event;

@end

@interface DPResponder : NSObject <DPResponder> {
    id<DPResponder> _nextResponder;
}

@end

@implementation DPResponder

@synthesize nextResponder = _nextResponder;

- (void)handleEvent:(DPEvent *)event {
    [_nextResponder handleEvent:event];
}

@end

#pragma mark - DPBlock

@interface DPBlock : DPResponder


@end

@implementation DPBlock

- (void)handleEvent:(DPEvent *)event {
    if ([event.eventName containsString:@"BLOCK_EVENT"]) {
        NSLog(@"%@ handle event: %@", self, event.eventName);
    } else {
        [super handleEvent:event];
    }
}

@end



#pragma mark - DPSection
@interface DPSection : DPResponder

@property (readwrite, nonatomic, strong) NSArray<DPBlock *> *blocks;

@end

@implementation DPSection

- (void)handleEvent:(DPEvent *)event {
    if ([event.eventName containsString:@"SECTION_EVENT"]) {
        NSLog(@"%@ handle event: %@", self, event.eventName);
    } else {
        [super handleEvent:event];
    }
}

@end

#pragma mark - DPModule

@interface DPModule : DPResponder

@property (readwrite, nonatomic, strong) NSArray<DPSection *> *sections;

@end

@implementation DPModule

- (void)handleEvent:(DPEvent *)event {
    if ([event.eventName containsString:@"MODULE_EVENT"]) {
        NSLog(@"%@ handle event: %@", self, event.eventName);
    } else {
        [super handleEvent:event];
    }
}

@end
    


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPModule *module = [[DPModule alloc] init];
        DPSection *section = [[DPSection alloc] init];
        section.nextResponder = module;
        DPBlock *block = [[DPBlock alloc] init];
        block.nextResponder = section;
        
        [block handleEvent:[[DPEvent alloc] initWithEventName:@"BLOCK_EVENT"]];
        [block handleEvent:[[DPEvent alloc] initWithEventName:@"SECTION_EVENT"]];
        [block handleEvent:[[DPEvent alloc] initWithEventName:@"MODULE_EVENT"]];
    }
    return 0;
}
