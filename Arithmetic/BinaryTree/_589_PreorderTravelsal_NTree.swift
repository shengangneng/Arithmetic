//
//  _589_PreorderTravelsal_NTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/n-ary-tree-preorder-traversal/
struct _589_PreorderTravelsal_NTree {
    
    // 迭代方式
    func preorder2(_ root: Node?) -> [Int] {
        guard let root = root else {
            return []
        }
        var res = [Int]()
        var stack = [root]
        while !stack.isEmpty {
            let node = stack.removeLast()
            res.append(node.val)
            for child in node.children.reversed() {
                stack.append(child)
            }
        }
        return res
    }

    // 递归
     func preorder(_ root: Node?) -> [Int] {
         guard let root = root else {
             return []
         }
         var res = [Int]()
         preorder(root, &res)
         return res
     }
     func preorder(_ root: Node?, _ res: inout [Int]) {
         if root == nil {
             return
         }
         res.append(root!.val)
         for child in root!.children {
             preorder(child, &res)
         }
     }
}
