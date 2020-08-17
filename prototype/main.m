//
//  main.m
//  prototype
//
//  Created by Dennis on 2020/8/17.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DPUserEducationExperience : NSObject <NSCopying> {
    NSTimeInterval _from;
    NSTimeInterval _to;
    NSString *_description;
}

@end

@implementation DPUserEducationExperience

- (id)copyWithZone:(NSZone *)zone {
    DPUserEducationExperience *experience = [[DPUserEducationExperience alloc] init];
    experience->_from = _from;
    experience->_to = _to;
    experience->_description = [_description copy];
    return experience;
}

- (NSString *)description {
    NSMutableString *desc = [[super description] mutableCopy];
    [desc appendFormat:@"<_from: %.2f>", _from];
    [desc appendFormat:@"<_to: %.2f>", _to];
    [desc appendFormat:@"<_description: %p>", _description];
    return  [desc copy];
}

- (instancetype)initWithFrom:(NSTimeInterval)from to:(NSTimeInterval)to description:(NSString *)description {
    if (self = [super init]) {
        _from = from;
        _to = to;
        _description = description;
    }
    return self;
}

@end


@interface DPUserInfo : NSObject <NSCopying> {
    NSString *_userName;
    NSArray<DPUserEducationExperience *> *_educations;
}

@end

@implementation DPUserInfo

- (id)copyWithZone:(nullable NSZone *)zone {
    DPUserInfo *userInfo = [[DPUserInfo alloc] init];
    userInfo->_userName = [_userName copy];
    userInfo->_educations = [_educations copy];
    return userInfo;
}

- (NSString *)description {
    NSMutableString *desc = [[super description] mutableCopy];
    [desc appendFormat:@"<_userName: %p>", _userName];
    [desc appendFormat:@"<_educations: %@>", _educations];
    return  [desc copy];
}

- (instancetype)initWithUserName:(NSString *)userName educationExperience:(NSArray<DPUserEducationExperience *> *)experiences {
    if (self = [super init]) {
        _userName = userName;
        _educations = [experiences copy];
    }
    return self;
}

@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPUserInfo *user1 = [[DPUserInfo alloc] initWithUserName:@"Dennis" educationExperience:@[
            [[DPUserEducationExperience alloc] initWithFrom:1997 to:2000 description:@"middle school"],
            [[DPUserEducationExperience alloc] initWithFrom:2000 to:2006 description:@"university"]
        ]];
        NSLog(@"user1 = %@", user1);
        DPUserInfo *user2 = [user1 copy];
        NSLog(@"user2 = %@", user2);
    }
    return 0;
}
