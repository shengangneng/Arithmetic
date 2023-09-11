//
//  _110_IsBalanceTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/22.
//

import Foundation

// https://leetcode.cn/problems/balanced-binary-tree/
struct _110_IsBalanceTree {
    
    // 左神，递归套路
    private struct Info {
        var isBalanced: Bool
        var height: Int
    }
    
    private func process(_ root: TreeNode?) -> Info {
        guard let root = root else { return Info(isBalanced: true, height: 0)}
        let leftInfo = process(root.left)
        let rightInfo = process(root.right)
    
        var balance = true
        if !leftInfo.isBalanced || !rightInfo.isBalanced {
            balance = false
        }
        if abs(leftInfo.height - rightInfo.height) > 1 {
            balance = false
        }
        
        var height = max(leftInfo.height, rightInfo.height) + 1
        
        return Info(isBalanced: balance, height: height)
    }
    
    func isBalanced1(_ root: TreeNode?) -> Bool {
        return process(root).isBalanced
    }
    
    
    
    // 层序遍历（最大深度 - 最小深度）> 1则不是平衡的【这样求是不对的】
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
