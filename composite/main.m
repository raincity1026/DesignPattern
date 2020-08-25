//
//  main.m
//  composite
//
//  Created by Dennis on 2020/8/26.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DPTreeNode.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        DPTreeNode *root = [[DPTreeNode alloc] initWithName:@"root"];
        DPTreeNode *leaf1 = [[DPTreeNode alloc] initWithName:@"leaf1"];
        [root addChildNode:leaf1];
        
        DPTreeNode *container = [[DPTreeNode alloc] initWithName:@"container"];
        [root addChildNode:container];
        
        DPTreeNode *leaf2 = [[DPTreeNode alloc] initWithName:@"leaf2"];
        DPTreeNode *leaf3 = [[DPTreeNode alloc] initWithName:@"leaf3"];
        [container addChildNode:leaf2];
        [container addChildNode:leaf3];
        
        NSLog(@"%@", root);
        
    }
    return 0;
}
