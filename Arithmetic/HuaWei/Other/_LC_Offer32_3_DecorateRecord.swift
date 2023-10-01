//
//  _LC_Offer32_3_DecorateRecord.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _LC_Offer32_3_DecorateRecord {
    func decorateRecord(_ root: TreeNode?) -> [[Int]] {
        guard var root = root else { return [[Int]]() }
        var queue = [root]
        var res = [[Int]]()
        while !queue.isEmpty {
            let count = queue.count
            var array = [Int]()
            queue = queue.reversed()
            for _ in 0..<count {
                let node = queue.removeFirst()
                array.append(node.val)
                if res.count & 1 == 1 {
                    if node.right != nil {
                        queue.append(node.right!)
                    }
                    if node.left != nil {
                        queue.append(node.left!)
                    }
                } else {
                    if node.left != nil {
                        queue.append(node.left!)
                    }
                    if node.right != nil {
                        queue.append(node.right!)
                    }
                }
            }
            res.append(array)
        }
        return res
    }
}
