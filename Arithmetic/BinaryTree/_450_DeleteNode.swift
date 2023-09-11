//
//  _450_DeleteNode.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/delete-node-in-a-bst/
struct _450_DeleteNode {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        // 情况1：没有找到删除的节点，遍历到空节点
        if root == nil { return root }
        if root!.val == key {
            // 情况2: 左右还在都为空，直接删除节点，并返回nil
            if root!.left == nil && root!.right == nil {
                return nil
            }
            // 情况3: 左孩子为空，右孩子不为空：删除节点，右孩子补位
            else if root!.left == nil {
                return root!.right
            }
            // 情况4: 右孩子为空，左孩子为空：删除节点，左孩子补位
            else if root!.right == nil {
                return root!.left
            }
            // 情况5: 左右孩子都不为空，将删除节点的左孩子，放在右孩子的最左节点的左孩子位置
            // 并返回删除节点右孩子作为新的根节点
            else {
                var cur = root!.right
                while cur?.left != nil {
                    cur = cur?.left
                }
                cur?.left = root!.left  // cur.left就是root右节点的最左节点的左孩子
                return root!.right
            }
        }
        if (root!.val > key) {
            root?.left = deleteNode(root?.left, key)
        }
        if root!.val < key {
            root?.right = deleteNode(root?.right, key)
        }
        return root
    }
}
