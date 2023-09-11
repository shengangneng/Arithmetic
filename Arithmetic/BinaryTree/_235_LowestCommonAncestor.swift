//
//  _235_LowestCommonAncestor.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/lowest-common-ancestor-of-a-binary-search-tree/solutions/
struct _235_LowestCommonAncestor {
    
    // 迭代法
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let p = p, let q = q else { return root }
        var root = root
        while root != nil {
            if root!.val > p.val && root!.val > q.val {
                root = root!.left
            } else if root!.val < p.val && root!.val < q.val {
                root = root!.right
            } else {
                return root
            }
        }
        return nil
    }
    
    // 递归法
    func lowestCommonAncestor1(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        guard let root = root, let p = p, let q = q else { return root }
        if root.val > p.val && root.val > q.val {
            return lowestCommonAncestor(root.left, p, q)
        } else if root.val < p.val && root.val < q.val {
            return lowestCommonAncestor(root.right, p, q)
        } else {
            return root
        }
    }
}
