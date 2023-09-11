//
//  _513_FindBottomLeftValue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/find-bottom-left-tree-value/
struct _513_FindBottomLeftValue {
    
    // 使用层序遍历吧，递归没看懂
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue = [root]
        var res = 0
        while !queue.isEmpty {
            let count = queue.count
            for index in 0..<count {
                let node = queue.removeFirst()
                if 0 == index {
                    res = node.val
                }
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
        }
        return res
    }
    
    
    // 递归
    var maxLen = -1
    var maxLeftValue = 0
    mutating func findBottomLeftValue2(_ root: TreeNode?) -> Int {
        traversal(root, 0)
        return maxLeftValue
    }

    mutating func traversal(_ root: TreeNode?, _ deep: Int) {
        guard let root = root else {
            return
        }

        if root.left == nil && root.right == nil {
            if deep > maxLen {
                maxLen = deep
                maxLeftValue = root.val
            }
            return
        }
        
        if root.left != nil {
            traversal(root.left, deep + 1)
        }
        
        if root.right != nil {
            traversal(root.right, deep + 1)
        }
        return
    }
}
