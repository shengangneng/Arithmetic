//
//  _141_PreorderTravelsal.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-preorder-traversal/

struct _141_PreorderTravelsal {
    
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var arr = [Int]()
        preorder(root, &arr)
        return arr
    }

    func preorder(_ node: TreeNode?, _ arr: inout [Int]) {
        if node == nil {
            return
        }
        arr.append(node!.val)
        preorder(node!.left, &arr)
        preorder(node!.right!, &arr)
    }
}
