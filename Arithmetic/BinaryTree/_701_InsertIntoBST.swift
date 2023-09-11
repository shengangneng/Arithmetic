//
//  _701_InsertIntoBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/insert-into-a-binary-search-tree/description/
struct _701_InsertIntoBST {
    // 递归法
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        if root == nil { return TreeNode(val) }
        
        if root!.val > val {
            root!.left = insertIntoBST(root?.left, val)
        } else {
            root!.right = insertIntoBST(root?.right, val)
        }
        return root
    }
    
    
    // 自己做出来了，迭代法 - 中序遍历
    func insertIntoBST1(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        let node = TreeNode(val)
        guard let root = root else { return node }
        var head:TreeNode? = root
        while head != nil {
            if head!.val > val {
                if head!.left != nil {
                    head = head!.left
                } else {
                    head!.left = node
                    break
                }
            } else {
                if head!.right != nil {
                    head = head!.right
                } else {
                    head!.right = node
                    break
                }
            }
        }
        return head
    }
}
