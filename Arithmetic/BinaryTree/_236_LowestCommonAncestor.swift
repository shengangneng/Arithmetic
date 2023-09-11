//
//  _236_LowestCommonAncestor.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/lowest-common-ancestor-of-a-binary-tree/
struct _236_LowestCommonAncestor {
    
    // 左神递归套路
    private struct Info {
        var findP: Bool
        var findQ: Bool
        var answer: TreeNode?   // 找到最低公共祖先节点
        init(_ findP: Bool,_ findQ: Bool,_ answer: TreeNode?) {
            self.findP = findP
            self.findQ = findQ
            self.answer = answer
        }
    }
    
    private func process(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> Info {
        guard let root = root else { return Info(false, false, nil)}
        let leftInfo = process(root.left, p, q)
        let rightInfo = process(root.right, p, q)
        var findP = (root.val == p?.val) || leftInfo.findP || rightInfo.findP
        var findQ = (root.val == q?.val) || leftInfo.findQ || rightInfo.findQ
        var answer: TreeNode? = nil
        if leftInfo.answer != nil {
            answer = leftInfo.answer
        } else if rightInfo.answer != nil {
            answer = rightInfo.answer
        } else {
            // 左右都没找到答案，但是又出现了findP或者findQ
            if findP && findQ {
                answer = root
            }
        }
        return Info(findP, findQ, answer)
    }
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        return process(root, p, q).answer
    }
    
    
    
    
    // 后序遍历（左右中）就是天然的回溯过程，可以根据左右子树的返回值，来处理中节点的逻辑。
//    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
//        if root?.val == p?.val || root?.val == q?.val || root == nil { return root }
//        let left = lowestCommonAncestor(root?.left, p, q)
//        let right = lowestCommonAncestor(root?.right, p, q)
//        if left != nil && right != nil { return root }
//        if left == nil { return right }
//        return left
//    }
}
