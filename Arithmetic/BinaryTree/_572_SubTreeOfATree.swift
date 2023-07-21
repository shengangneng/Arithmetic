//
//  _572_SubTreeOfATree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/subtree-of-another-tree/
/*
 
 输入
 [1,null,1,null,1,null,1,null,1,null,1,null,1,null,1,null,1,null,1,null,1,2]
 [1,null,1,null,1,null,1,null,1,null,1,2]
 
 */
struct _572_SubTreeOfATree {
    
    // 迭代法
    
    
    
    // 递归
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil && subRoot == nil {
            return true
        }
        if root == nil || subRoot == nil {
            return false
        }
        let selfSame = isSameTree(root, subRoot)
        if selfSame {
            return true
        }
        let leftSub = isSubtree(root!.left, subRoot)
        let rightSub = isSubtree(root!.right, subRoot)
        return leftSub || rightSub
    }
    func isSameTree(_ root: TreeNode?, _ sub: TreeNode?) -> Bool {
        if root == nil && sub == nil {
            return true
        }
        if root == nil || sub == nil {
            return false
        }
        if root!.val != sub!.val {
            return false
        }
        let leftSame = isSameTree(root!.left, sub!.left)
        let rigthSame = isSameTree(root!.right, sub!.right)
        return leftSame && rigthSame
    }
}
