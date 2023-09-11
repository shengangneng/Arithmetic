//
//  _104_LevelOrder_MaxHeight.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/maximum-depth-of-binary-tree/
struct _104_LevelOrder_MaxHeight {
    // 层序遍历
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var level = [root]
        var height = 0
        while !level.isEmpty {
            let count = level.count
            for _ in 0..<count {
                let node = level.removeFirst()
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
            height += 1
        }
        return height
    }
    
    // 递归
    func maxDepth1(_ root: TreeNode?) -> Int {
        guard let root = root else { return 0 }
        let leftdepth = maxDepth(root.left)
        let rightdepth = maxDepth(root.right)
        return 1 + max(leftdepth, rightdepth)
    }
}
