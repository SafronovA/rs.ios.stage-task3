//
//  TreeNode.m
//  ios.stage-task
//
//  Created by Safronau, Aliaksei on 5/23/21.
//
 
#import "TreeNode.h"
 
@implementation TreeNode
 
- (instancetype)initWithValue:(NSNumber *)value {
    self = [super init];
    if (self != nil) {
        self.value = value;
        self.leftNode = nil;
        self.rightNode = nil;
    }
    return self;
}
 
- (instancetype)treeFromPreorder:(NSMutableArray *)preorder {
    if (preorder.count == 0) {
        return nil;
    }
    id firstObj = preorder.firstObject;
    [preorder removeObjectAtIndex:0];
    if (firstObj == [NSNull null]) {
        return nil;
    }
    TreeNode *rootNode = [[TreeNode alloc] initWithValue: firstObj];
    rootNode.leftNode = [[TreeNode alloc] treeFromPreorder: preorder];
    rootNode.rightNode = [[TreeNode alloc] treeFromPreorder: preorder];
    return rootNode;
}
 
- (NSMutableArray *)levelTraversal {
    NSMutableArray *traversalArray = [NSMutableArray arrayWithObjects:
                                      [NSMutableArray arrayWithObjects: self.value, nil], nil];
    if (self.leftNode != nil) {
        NSArray *leftArray = self.leftNode.levelTraversal;
        for (int i = 0; i < leftArray.count; ++i) {
            if (i < traversalArray.count - 1) {
                [traversalArray[i + 1] addObjectsFromArray:leftArray[i]];
            } else {
                [traversalArray addObject: leftArray[i]];
            }
        }
    }
    if (self.rightNode != nil) {
        NSArray *rightArray = self.rightNode.levelTraversal;
        for (int i = 0; i < rightArray.count; ++i) {
            if (i < traversalArray.count - 1) {
                [traversalArray[i + 1] addObjectsFromArray:rightArray[i]];
            } else {
                [traversalArray addObject: rightArray[i]];
            }
        }
    }
    return traversalArray;
}
 
@end
