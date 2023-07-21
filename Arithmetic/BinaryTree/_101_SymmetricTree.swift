//
//  _101_SymmetricTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/symmetric-tree/
struct _101_SymmetricTree {
    
    // 迭代
    func isSymmetric2(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }
        if root.left == nil || root.right == nil {
            return false
        }
        var stack = [TreeNode?]()
        stack.append(root.left)
        stack.append(root.right)
        while !stack.isEmpty {
            let left = stack.removeFirst()
            let right = stack.removeFirst()
            if left == nil && right == nil {
                continue
            }
            if (left != nil && right == nil) ||
                (right != nil && left == nil) {
                return false
            }
            if left?.val != right?.val {
                return false
            }
            stack.append(left!.left)
            stack.append(right!.right)
            stack.append(left!.right)
            stack.append(right!.left)
        }
        return true
    }



    // 递归
     func isSymmetric(_ root: TreeNode?) -> Bool {
         guard let root = root else {
             return true
         }
         return isSymmetric(root.left, root.right)
     }
     func isSymmetric(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
         if left == nil && right == nil {
             return true
         }
         if left != nil && right == nil || left == nil && right != nil {
             return false
         }
         if left!.val != right!.val {
             return false
         }
         let outside = isSymmetric(left!.left, right!.right)
         let inside = isSymmetric(left!.right, right!.left)
         return outside && inside
     }
}
