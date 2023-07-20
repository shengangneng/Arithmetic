//
//  _111_LevelOrder_MinHeight.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/minimum-depth-of-binary-tree/
struct _111_LevelOrder_MinHeight {
    func minDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        var level = [root]
        var depth = 1
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
                if node.left == nil && node.right == nil {
                    return depth
                }
            }
            depth += 1
        }
        return depth
    }
}
