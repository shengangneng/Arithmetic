//
//  _94_InorderTravelsal.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-inorder-traversal/
struct _94_InorderTravelsal {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        inorder(root, &res)
        return res
    }
    
    func inorder(_ root: TreeNode?, _ arr: inout [Int]) {
        if root == nil {
            return
        }
        inorder(root?.left, &arr)
        arr.append(root!.val)
        inorder(root?.right, &arr)
    }
}
