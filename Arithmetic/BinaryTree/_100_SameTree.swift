//
//  _100_SameTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/same-tree/
struct _100_SameTree {
    
    // 迭代
    func isSameTree2(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        var stack = [TreeNode?]()
        stack.append(p)
        stack.append(q)
        while !stack.isEmpty {
            let left = stack.removeFirst()
            let right = stack.removeFirst()
            if left == nil && right == nil {
                continue
            }
            if (left != nil && right == nil) || (left == nil && right != nil) {
                return false
            }
            if left!.val != right!.val {
                return false
            }
            stack.append(left!.left)
            stack.append(right!.left)
            stack.append(left!.right)
            stack.append(right!.right)
        }
        return true
    }
    
    // 递归
    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        }
        if (p == nil && q != nil) || (p != nil && q == nil) || (p!.val != q!.val) {
            return false
        }
        let outside = isSameTree(p!.left, q!.left)
        let inside = isSameTree(p!.right, q!.right)
        return outside && inside
    }
}
