//
//  _117_LevelOrder_NextRightPointer.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/populating-next-right-pointers-in-each-node-ii/
struct _117_LevelOrder_NextRightPointer {
    func connect(_ root: Node?) -> Node? {
        guard let root = root else { return root }
//        var queue = [root]
//        while !queue.isEmpty {
//            let count = queue.count
//            for index in 0..<count {
//                let node = queue.removeFirst()
//                if index + 1 < count {
//                    node.next = queue.first
//                }
//                if node.left != nil {
//                    queue.append(node.left!)
//                }
//                if node.right != nil {
//                    queue.append(node.right!)
//                }
//            }
//        }
        return root
    }
}
