//
//  _94_InorderTravelsal_Ite.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/20.
//

import Foundation


// https://leetcode.cn/problems/binary-tree-inorder-traversal/
/*
 先一股脑门左边入栈。到没有可入的了。
 开始出栈，每一个出栈的，都打印出来。
 然后将每一个出栈的右边入栈。
 */
struct _94_InorderTravelsal_Ite {
    
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var res = [Int]()
        var stack = [TreeNode]()
        var cur: TreeNode! = root
        while cur != nil || !stack.isEmpty {
            if cur != nil {
                // 先从中间不断把左节点入栈
                stack.append(cur)
                cur = cur.left
            } else {
                // 当左存满了，不断的出栈，左节点空，右节点入栈
                cur = stack.removeLast()
                res.append(cur.val)
                cur = cur.right
            }
        }
        return res
    }
    
}
