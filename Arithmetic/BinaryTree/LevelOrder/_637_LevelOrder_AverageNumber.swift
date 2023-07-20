//
//  _637_LevelOrder_AverageNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/average-of-levels-in-binary-tree/
// 每层平均值
struct _637_LevelOrder_AverageNumber {
    func averageOfLevels(_ root: TreeNode?) -> [Double] {
        var res = [Double]()
        guard let root = root else {
            return res
        }
        var level = [root]
        while !level.isEmpty {
            let count = level.count
            var total = 0
            for _ in 0..<count {
                let node = level.removeFirst()
                total += node.val
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
            res.append(Double(total) / Double(count))
        }
        return res
    }
}
