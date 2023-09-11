//
//  _530_GetMinimumDifference.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/minimum-absolute-difference-in-bst/
struct _530_GetMinimumDifference {
    // 迭代 - 中序遍历
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var stack = [TreeNode]()
        var cur: TreeNode! = root
        var pre = -1
        var minVal = Int.max
        while !stack.isEmpty || cur != nil {
            if cur != nil {
                stack.append(cur)
                cur = cur.left
            } else {
                cur = stack.removeLast()
                if pre != -1 {
                    minVal = min(minVal, abs(pre - cur.val))
                }
                pre = cur.val
                cur = cur.right
            }
        }
        return minVal
    }
    
    
    // 递归 - 中序遍历
    func getMinimumDifference1(_ root: TreeNode?) -> Int {
        var minVal = Int.max
        var pre = -1
        getMinimumDifference(root, &minVal, &pre)
        return minVal
    }
    func getMinimumDifference(_ root: TreeNode?, _ minVal: inout Int, _ pre: inout Int) {
        guard let root = root else { return }

        getMinimumDifference(root.left, &minVal, &pre)
        if pre != -1 {
            minVal = min(minVal, root.val - pre)
        }
        pre = root.val
        getMinimumDifference(root.right, &minVal, &pre)
    }
    
    
    // 错误做法：前序遍历是不行的。要用中序遍历
    func getMinimumDifference2(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        var stack = [root]
        var minVal = Int.max
        var preVal = -1
        while !stack.isEmpty {
            let node = stack.removeLast()
            if preVal == -1 {
                preVal = node.val
            } else {
                minVal = min(abs(node.val - preVal), minVal)
            }
            preVal = node.val
            if node.right != nil {
                stack.append(node.right!)
            }
            if node.left != nil {
                stack.append(node.left!)
            }
        }
        return minVal
    }
}
