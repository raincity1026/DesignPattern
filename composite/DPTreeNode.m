//
//  DPTreeNode.m
//  composite
//
//  Created by Dennis on 2020/8/26.
//  Copyright © 2020 raincity. All rights reserved.
//

#import "DPTreeNode.h"

@interface DPTreeNode ()

@property (readwrite, nonatomic, copy) NSString *name;
@property (readwrite, nonatomic, strong) NSMutableArray<id<DPTreeNode>> *subNodes;

@end

@implementation DPTreeNode

- (instancetype)initWithName:(NSString *)name {
    if (self = [super init]) {
        _name = [name copy];
        _subNodes = [@[] mutableCopy];
    }
    return self;
}

- (void)addChildNode:(id<DPTreeNode>)node {
    [self.subNodes addObject:node];
}

- (void)removeChildNode:(id<DPTreeNode>)node {
    [self.subNodes removeObject:node];
}

- (NSArray<id<DPTreeNode>> *)allNodes {
    return [self.subNodes copy];
}

- (NSString *)description {
    NSMutableString *desc = [[super description] mutableCopy];
    [desc appendFormat:@"<name: %@>", self.name];
    [desc appendFormat:@"<subNodes: %@>", self.subNodes];
    return [desc copy];
}

@end


@implementation DPLeafNode

- (void)addChildNode:(id<DPTreeNode>)node {
    // do nothing
}

- (void)removeChildNode:(id<DPTreeNode>)node {
}

@end
