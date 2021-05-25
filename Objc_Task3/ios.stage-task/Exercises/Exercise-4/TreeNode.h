//
//  TreeNode.h
//  ios.stage-task
//
//  Created by Safronau, Aliaksei on 5/23/21.
//
 
#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
@interface TreeNode : NSObject
 
@property (nonatomic, retain) NSNumber *value;
@property (nonatomic, retain, nullable) TreeNode *leftNode;
@property (nonatomic, retain, nullable) TreeNode *rightNode;
 
- (instancetype)initWithValue:(NSNumber *)value;
- (instancetype)treeFromPreorder:(NSArray *) preorder;
- (NSMutableArray *)levelTraversal;
 
@end
 
NS_ASSUME_NONNULL_END
