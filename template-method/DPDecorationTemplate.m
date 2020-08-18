//
//  DPDecorationTemplate.m
//  template-method
//
//  Created by Dennis on 2020/8/18.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPDecorationTemplate.h"

@implementation DPDecorationTemplate

- (void)decorate {
    NSLog(@"install woodfloor: %@", [self woodfloor]);
    NSLog(@"install tile: %@", [self tile]);
    NSLog(@"install bath: %@", [self bathtab]);
}

- (NSString *)woodfloor {
    return nil;
}

- (NSString *)tile {
    return nil;
}

- (NSString *)bathtab {
    return nil;
}

@end

@implementation DPDeluxeDecorationTemplate

- (NSString *)woodfloor {
    return @"powerdekor";
}

- (NSString *)tile {
    return @"MonaLisa";
}

- (NSString *)bathtab {
    return @"Kole";
}

@end

@implementation DPSimpleDecorationTemplate

- (NSString *)woodfloor {
    return @"simple";
}

- (NSString *)tile {
    return @"simple";
}

- (NSString *)bathtab {
    return nil;
}

@end

