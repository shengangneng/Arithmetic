//
//  _114_Flatten.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/11.
//

import Foundation

// https://leetcode.cn/problems/flatten-binary-tree-to-linked-list/
struct _114_Flatten {
    func flatten(_ root: TreeNode?) {
        guard var root = root else { return }
        var stack = [root]
        var nodes = [TreeNode]()
        while !stack.isEmpty {
            let node = stack.removeLast()
            if node.right != nil {
                stack.append(node.right!)
            }
            if node.left != nil {
                stack.append(node.left!)
            }
            nodes.append(node)
        }
        var pre: TreeNode? = nil
        for node in nodes {
            if pre == nil {
                pre = node
            } else {
                pre!.left = nil
                pre!.right = node
                pre = node
            }
        }
    }
}
