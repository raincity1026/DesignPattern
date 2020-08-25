//
//  DPTreeNode.h
//  composite
//
//  Created by Dennis on 2020/8/26.
//  Copyright © 2020 raincity. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol DPTreeNode <NSObject>

@property (readonly) NSString *name;
@property (readonly) NSArray<id<DPTreeNode>> *allNodes;

- (void)addChildNode:(id<DPTreeNode>)node;
- (void)removeChildNode:(id<DPTreeNode>)node;

@end

@interface DPTreeNode : NSObject <DPTreeNode>

- (instancetype)initWithName:(NSString *)name;

@end

@interface DPLeafNode : NSObject

@end

NS_ASSUME_NONNULL_END
