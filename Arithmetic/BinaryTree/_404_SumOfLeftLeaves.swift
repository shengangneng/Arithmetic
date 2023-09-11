//
//  _404_SumOfLeftLeaves.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/sum-of-left-leaves/
struct _404_SumOfLeftLeaves {
    // 递归
    func sumOfLeftLeaves(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var leftVal = 0
        if root.left != nil && root.left!.left == nil && root.left!.right == nil {
            leftVal = root.left!.val
        }
        return leftVal + sumOfLeftLeaves(root.left) + sumOfLeftLeaves(root.right)
    }
    
    // 迭代法（前中后序、层序都可以）- 前序遍历
    func sumOfLeftLeaves1(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var stack = [root]
        var sum = 0
        while !stack.isEmpty {
            let node = stack.removeLast()
            if node.left != nil && node.left!.left == nil && node.left!.right == nil {
                sum += node.left!.val
            }
            if node.right != nil {
                stack.append(node.right!)
            }
            if node.left != nil {
                stack.append(node.left!)
            }
        }
        return sum
    }
    
    // 迭代法（前中后序、层序都可以）- 层序遍历
    func sumOfLeftLeaves2(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var queue = [root]
        var sum = 0
        while !queue.isEmpty {
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                if node.left != nil && node.left!.left == nil && node.left!.right == nil {
                    sum += node.left!.val
                }
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
        }
        return sum
    }
    
}
