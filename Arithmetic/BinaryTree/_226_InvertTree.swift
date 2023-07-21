//
//  _226_InvertTree_1.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/invert-binary-tree/
struct _226_InvertTree {
    
    // 广度优先：层序遍历
    func invertTree3(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return root
        }
        var level = [root]
        while !level.isEmpty {
            let count = level.count
            for _ in 0..<count {
                let node = level.removeFirst()
                swap(&node.left, &node.right)
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
        }
        return root
    }

    // 深度优先：前序遍历
     func invertTree2(_ root: TreeNode?) -> TreeNode? {
         guard let root = root else {
             return root
         }
         var stack = [root]
         while !stack.isEmpty {
             let node = stack.removeLast()
             swap(&node.left, &node.right)
             if node.left != nil {
                 stack.append(node.left!)
             }
             if node.right != nil {
                 stack.append(node.right!)
             }
         }
         return root
     }

    // 递归
     func invertTree1(_ root: TreeNode?) -> TreeNode? {
         guard let root = root else {
             return root
         }
         swap(&root.left, &root.right)
         _ = invertTree1(root.left)
         _ = invertTree1(root.right)
         return root
     }
}
