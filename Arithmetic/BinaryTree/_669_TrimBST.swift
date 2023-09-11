//
//  _669_TrimBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/trim-a-binary-search-tree/
struct _669_TrimBST {
    func trimBST1(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
        if root == nil { return nil }
        var root: TreeNode? = root
        // 让root走到[low, high]区间内
        while (root != nil && (root!.val < low || root!.val > high)) {
            if root!.val < low {
                root = root!.right
            } else {
                root = root!.left
            }
        }
        
        var cur = root
        // 左边剪枝（将小于low的剪掉）
        while cur != nil {
            while cur!.left != nil && cur!.left!.val < low {
                cur!.left = cur!.left!.right
            }
            cur = cur!.left
        }
        cur = root
        
        // 右边剪枝（将大于high的剪掉）
        while cur != nil {
            while cur!.right != nil && cur!.right!.val > high {
                cur!.right = cur!.right!.left
            }
            cur = cur!.right
        }
        
        return root
    }
    
    
    /*
     递归法
     1 如果根节点比low小，那么证明左子树全部的节点都比low小，这时抛弃根节点直接返回修剪后的右子树
     2 如果根节点比high大，那么证明右子树全部节点都比high大，这时抛弃根节点直接返回修剪后的左子树
     3 如果根节点在low和high之间，那么保留根节点修剪左右子树。最后返回根节点
    */
    func trimBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> TreeNode? {
        guard var root = root else { return nil }
        if root.val < low {
            return trimBST(root.right, low, high)
        }
        if root.val > high {
            return trimBST(root.left, low, high)
        }
        root.left = trimBST(root.left, low, high)
        root.right = trimBST(root.right, low, high)
        return root
    }
}
