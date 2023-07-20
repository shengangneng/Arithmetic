//
//  _145_PostOrder.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-postorder-traversal/

struct _145_PostOrderTravelsal {
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        postorder(root, &res)
        return res
    }

    func postorder(_ root: TreeNode?, _ arr: inout [Int]) {
        if root == nil {
            return
        }
        postorder(root!.left, &arr)
        postorder(root!.right, &arr)
        arr.append(root!.val)
    }
}
