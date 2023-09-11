//
//  _958_IsCompleteTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/check-completeness-of-a-binary-tree/
struct _958_IsCompleteTree {
    // 层序遍历 -
    // 1、如果有右节点，没有左节点，那么返回false
    // 2、如果第一次遇到两个左右不双全的，后面不会再有节点
    func isCompleteTree(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var queue = [root]
        var leaf = false
        while !queue.isEmpty {
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                if leaf && (node.left != nil || node.right != nil) {
                    return false
                }
                if node.right != nil && node.left == nil {
                    return false
                }
                // 左右有一个空了，说明后面的都是叶子结点了。
                if node.left == nil || node.right == nil {
                    leaf = true
                }
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
                
            }
        }
        return true
    }
}
