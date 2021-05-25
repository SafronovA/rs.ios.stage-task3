#import "LevelOrderTraversal.h"
#import "TreeNode.h"

NSArray *LevelOrderTraversalForTree(NSArray *tree) {
    NSMutableArray *mutableTree = [NSMutableArray arrayWithArray:tree];
    TreeNode *resultTree = [[TreeNode alloc] treeFromPreorder:mutableTree];
    if (resultTree) {
        return [resultTree levelTraversal];
    } else {
        return @[];
    }
}
