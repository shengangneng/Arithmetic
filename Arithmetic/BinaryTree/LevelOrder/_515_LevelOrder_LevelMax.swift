//
//  _515_LevelOrder_LevelMax.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/find-largest-value-in-each-tree-row/
struct _515_LevelOrder_LevelMax {
    func largestValues(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else {
            return res
        }
        var level = [root]
        while !level.isEmpty {
            let count = level.count
            var maxVal = Int.min
            for _ in 0..<count {
                let node = level.removeFirst()
                maxVal = max(maxVal, node.val)
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
            res.append(maxVal)
        }
        return res
    }
}
