//
//  _145_PostOrderTravelsal_Ite.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-postorder-traversal/
struct _145_PostOrderTravelsal_Ite {
    
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        guard let root = root else {
            return res
        }
        var stack = [root]
        while !stack.isEmpty {
            let node = stack.removeLast()
            if node.left != nil {
                stack.append(node.left!)
            }
            if node.right != nil {
                stack.append(node.right!)
            }
            res.append(node.val)
        }
        
        return res.reversed()
    }
}
