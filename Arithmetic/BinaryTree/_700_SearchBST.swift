//
//  _700_SearchBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation
/*
 由于是二叉搜索树，所以判断大小，小，则往左子树找。大，则往右子树找
 */
// https://leetcode.cn/problems/search-in-a-binary-search-tree/description/
struct _700_SearchBST {
    
    // 迭代法 - 由于二叉搜索树有序，不需要使用栈或队列
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        var res = root
        while res != nil {
            let value = res!.val
            if value == val {
                return res
            } else if (value > val) {
                res = res?.left
            } else {
                res = res?.right
            }
        }
        return nil
    }
    
    // 递归
    func searchBST1(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return root }
        if root.val == val { return root }
        if root.val > val {
            return searchBST(root.left, val)
        }
        if root.val < val {
            return searchBST(root.right, val)
        }
        return nil
    }
    
    // 迭代 - 层序遍历【很垃圾，没有用上搜索树的有序的特点】
    func searchBST2(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else { return root }
        var queue = [root]
        while !queue.isEmpty {
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                if node.val == val {
                    return node
                }
                if node.left != nil {
                    queue.append(node.left!)
                }
                if node.right != nil {
                    queue.append(node.right!)
                }
            }
        }
        return nil
    }
    
}
