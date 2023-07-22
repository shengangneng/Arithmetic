//
//  _110_IsBalanceTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/22.
//

import Foundation

// https://leetcode.cn/problems/balanced-binary-tree/
struct _110_IsBalanceTree {
    // 递归
    func isBalanced(_ root: TreeNode?) -> Bool {
        return treeHeight(root) != -1
    }
    func treeHeight(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        let leftHeight = treeHeight(root.left)
        if leftHeight == -1 {
            return -1
        }
        let rightHeight = treeHeight(root.right)
        if rightHeight == -1 {
            return -1
        }
        return abs(leftHeight - rightHeight) <= 1 ? (1 + max(leftHeight, rightHeight)) : -1
    }
}
