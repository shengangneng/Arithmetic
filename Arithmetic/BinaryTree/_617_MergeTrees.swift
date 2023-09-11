//
//  _617_MergeTrees.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/merge-two-binary-trees/
struct _617_MergeTrees {
    // 递归（前中后序都可以）
    func mergeTrees(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard let root1 = root1 else { return root2 }
        guard let root2 = root2 else { return root1 }
        root1.val += root2.val
        root1.left = mergeTrees(root1.left, root2.left)
        root1.right = mergeTrees(root1.right, root2.right)
        return root1
    }
    
    // 迭代（层序遍历）
    func mergeTrees1(_ root1: TreeNode?, _ root2: TreeNode?) -> TreeNode? {
        guard let root1 = root1 else { return root2 }
        guard let root2 = root2 else { return root1 }
        var queue = [root1, root2]
        while !queue.isEmpty {
            let node1 = queue.removeFirst()
            let node2 = queue.removeFirst()
            node1.val += node2.val
            
            if node1.left != nil && node2.left != nil {
                queue.append(node1.left!)
                queue.append(node2.left!)
            }
            if node1.right != nil && node2.right != nil {
                queue.append(node1.right!)
                queue.append(node2.right!)
            }
            
            if node1.left == nil && node2.left != nil {
                node1.left = node2.left
            }
            if node1.right == nil && node2.right != nil {
                node1.right = node2.right
            }
        }
        return root1
    }
    
}
