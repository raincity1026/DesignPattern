//
//  main.m
//  Iterator
//
//  Created by Dennis on 2020/8/28.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSArray *array = @[@"1", @"3", @"5", @"7", @"9"];
        NSEnumerator *enumerrator = array.objectEnumerator;
        NSString *string = enumerrator.nextObject;
        while (string != nil) {
            NSLog(@"%@", string);
            string = enumerrator.nextObject;
        }
        
        enumerrator = array.reverseObjectEnumerator;
        string = enumerrator.nextObject;
        while (string != nil) {
            NSLog(@"%@", string);
            string = enumerrator.nextObject;
        }
    }
    return 0;
}
