//
//  _98_IsValidBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/validate-binary-search-tree/
struct _98_IsValidBST {
    
    // 左神递归套路
    private struct Info {
        var isBST: Bool
        var min: Int
        var max: Int
        init(_ isBST: Bool,_ min: Int,_ max: Int) {
            self.isBST = isBST
            self.min = min
            self.max = max
        }
    }
    
    private func process(_ root: TreeNode?) -> Info? {
        guard let root = root else { return nil }
        let leftInfo = process(root.left)
        let rightInfo = process(root.right)
        
        var minVal = root.val
        var maxVal = root.val
        var isBST = true
        if let left = leftInfo {
            minVal = min(minVal, left.min)
            maxVal = max(maxVal, left.max)
            if !left.isBST {
                isBST = false
            }
        }
        if let right = rightInfo {
            minVal = min(minVal, right.min)
            maxVal = max(maxVal, right.max)
            if !right.isBST {
                isBST = false
            }
        }
        if leftInfo != nil &&  leftInfo!.max >= root.val {
            isBST = false
        }
        if rightInfo != nil && rightInfo!.min <= root.val {
            isBST = false
        }
        
        return Info(isBST, minVal, maxVal)
    }
    
    func isValidBST0(_ root: TreeNode?) -> Bool {
        guard let info = process(root) else { return false }
        return info.isBST
    }
    
    
    // 迭代法 - 中序遍历（二叉搜索树，中序遍历一定是从小到大的）
    func isValidBST(_ root: TreeNode?) -> Bool {
        guard let root = root else { return true }
        var stack = [TreeNode]()
        var cur: TreeNode! = root
        var maxVal = Int.min
        while !stack.isEmpty || cur != nil  {
            if cur != nil {
                stack.append(cur!)
                cur = cur.left
            } else {
                cur = stack.removeLast()
                if cur.val > maxVal {
                    maxVal = cur!.val
                } else {
                    return false
                }
                cur = cur.right
            }
        }
        return true
    }
    
    
    // 递归法
    func isValidBST1(_ root: TreeNode?) -> Bool {
        var maxVal = Int.min
        return isValidBST(root, &maxVal)
    }
    func isValidBST(_ root: TreeNode?, _ maxVal: inout Int) -> Bool {
        guard let root = root else { return true }
        let left = isValidBST(root.left, &maxVal)
        if maxVal >= root.val {
            return false
        } else {
            maxVal = root.val
        }
        let right = isValidBST(root.right, &maxVal)
        return left && right
    }
}
