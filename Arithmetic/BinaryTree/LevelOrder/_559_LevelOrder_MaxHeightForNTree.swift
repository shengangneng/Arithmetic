//
//  _559_LevelOrder_MaxHeightForNTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/maximum-depth-of-n-ary-tree/
struct _559_LevelOrder_MaxHeightForNTree {
    // 递归
    func maxDepth(_ root: Node?) -> Int {
        guard let root = root else { return 0 }
        var maxVal = 0
        for child in root.children {
            maxVal = max(maxVal, maxDepth(child))
        }
        return 1 + maxVal
    }
    
    // 层序遍历
//    func maxDepth(_ root: Node?) -> Int {
//        guard let root = root else {
//            return 0
//        }
//        var level = [root]
//        var depth = 0
//        while !level.isEmpty {
//            let count = level.count
//            for _ in 0..<count {
//                let node = level.removeFirst()
//                for child in node.children {
//                    level.append(child)
//                }
//            }
//            depth += 1
//        }
//        return depth
//    }
}
