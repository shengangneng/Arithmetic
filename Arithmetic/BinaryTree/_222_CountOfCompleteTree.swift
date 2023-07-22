//
//  _222_CountOfCompleteTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/22.
//

import Foundation

// https://leetcode.cn/problems/count-complete-tree-nodes/description/
struct _222_CountOfCompleteTree {
    func countNodes(_ root: TreeNode?) -> Int {
        // 使用层序遍历即可
        guard let root = root else {
            return 0
        }
        var level = [root]
        var result = 0
        while !level.isEmpty {
            let count = level.count
            for _ in 0..<count {
                let node = level.removeFirst()
                result += 1
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
        }
        return result
    }
}
