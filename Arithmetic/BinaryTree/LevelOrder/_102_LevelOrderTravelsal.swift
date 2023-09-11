//
//  _102_LevelOrderTravelsal.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-level-order-traversal/
// 用Array来取代队列
struct _102_LevelOrderTravelsal {
//    func levelOrder(_ root: TreeNode?) -> [[Int]] {
//        var result = [[Int]]()
//        guard let root = root else {
//            return result
//        }
//        var level = [root]
//
//        while !level.isEmpty {
//            var subArray = [Int]()
//
//            for _ in 0..<level.count {
//                let node = level.removeFirst()
//                subArray.append(node.val)
//
//                if node.left != nil {
//                    level.append(node.left!)
//                }
//                if node.right != nil {
//                    level.append(node.right!)
//                }
//            }
//            result.append(subArray)
//        }
//        return result
//    }
    
    
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else { return res }
        var queue = [root]
        while !queue.isEmpty {
            let count = queue.count
            var subArray = [Int]()
            for _ in 0..<count {
                let node = queue.removeFirst()
                subArray.append(node.val)
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
            res.append(subArray)
        }
        return res
    }
}
