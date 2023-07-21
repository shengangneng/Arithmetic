//
//  _590_PostOrderTravelsal_NTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/n-ary-tree-postorder-traversal/
struct _590_PostOrderTravelsal_NTree {
    
    // 迭代方式
    func postorder2(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        var res = [Int]()
        var stack = [root]
        while !stack.isEmpty {
            let node = stack.removeLast()
            res.append(node.val)
            for child in node.children {
                stack.append(child)
            }
        }
        return res.reversed()
    }

    // 递归方式
     func postorder(_ root: Node?) -> [Int] {
         guard let root = root else {
             return []
         }
         var res = [Int]()
         postorder(root, &res)
         return res.reversed()
     }
     func postorder(_ root: Node?, _ res: inout [Int]) {
         if root == nil {
             return
         }
         res.append(root!.val)
         for child in root!.children.reversed() {
             postorder(child, &res)
         }
     }
}
