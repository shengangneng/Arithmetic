//
//  _429_LevelOrder_NTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

    public class Node {
        public var val: Int
        public var children: [Node]
        public init(_ val: Int) {
            self.val = val
            self.children = []
        }
    }

// https://leetcode.cn/problems/n-ary-tree-level-order-traversal/
struct _429_LevelOrder_NTree {
    func levelOrder(_ root: Node?) -> [[Int]] {
        var res = [[Int]]()
        guard let root = root else {
            return res
        }
        var level = [root]
        while !level.isEmpty {
            let count = level.count
            var subArray = [Int]()
            for _ in 0..<count {
                let node = level.removeFirst()
                subArray.append(node.val)
                for child in node.children {
                    level.append(child)
                }
            }
            res.append(subArray)
        }
        return res
    }
}
