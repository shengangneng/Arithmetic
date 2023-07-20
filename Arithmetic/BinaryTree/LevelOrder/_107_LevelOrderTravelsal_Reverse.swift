//
//  _102_LevelOrderTravelsal_Reverse.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-level-order-traversal-ii/
// 自底向上的遍历
struct _107_LevelOrderTravelsal_Reverse {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var level = [root]
        while !level.isEmpty {
            var subArray = [Int]()
            for _ in 0..<level.count {
                let node = level.removeFirst()
                
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
                subArray.append(node.val)
            }
            res.append(subArray)
        }
        return res.reversed()
    }
}
