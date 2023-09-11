//
//  _538_ConvertBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/convert-bst-to-greater-tree/
struct _538_ConvertBST {
    // 迭代 - 反中序遍历
    func convertBST1(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return root }
        var stack = [TreeNode]()
        var cur: TreeNode! = root
        var pre = Int.min
        while !stack.isEmpty || cur != nil {
            if cur != nil {
                stack.append(cur)
                cur = cur.right
            } else {
                cur = stack.removeLast()
                if pre != Int.min {
                    cur.val += pre
                }
                pre = cur.val
                cur = cur.left
            }
        }
        return root
    }
    
    
    // 递归 - 反中序遍历
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        var pre = Int.min
        return traversal(root, &pre)
    }
    func traversal(_ root: TreeNode?,_ pre: inout Int) -> TreeNode? {
        guard let root = root else { return root }
        
        let _ = traversal(root.right, &pre)
        
        if pre != Int.min {
            root.val += pre
        }
        pre = root.val
        
        let _ = traversal(root.left, &pre)
        return root
    }
}
