//
//  _116_LevelOrder_NextRightPointer.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/populating-next-right-pointers-in-each-node/
struct _116_LevelOrder_NextRightPointer {
    
    func connect(_ root: Node?) -> Node? {
        guard var root = root else {
            return root
        }
//        var level = [root]
//        while !level.isEmpty {
//            let count = level.count
//            var preNode: Node? = nil
//            for i in 0..<count {
//                let node = level.removeFirst()
//                if 0 == i {
//                    preNode = node
//                } else {
//                    preNode!.next = node
//                    preNode = node
//                }
//                if node.left != nil {
//                    level.append(node.left!)
//                }
//                if node.right != nil {
//                    level.append(node.right!)
//                }
//            }
//        }
        return root
    }

}
