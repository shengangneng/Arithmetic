//
//  _199_LevelOrder_RightSide.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-right-side-view/submissions/
struct _199_LevelOrder_RightSide {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else {
            return res
        }

        var level = [root]
        while !level.isEmpty {
            let count = level.count
            for i in 0..<count {
                let node = level.removeFirst()
                if i == count - 1 {
                    res.append(node.val)
                }
                if node.left != nil {
                    level.append(node.left!)
                }
                if node.right != nil {
                    level.append(node.right!)
                }
            }
        }
        return res
    }
}
