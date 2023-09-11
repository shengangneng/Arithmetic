//
//  _Zuo_MaxBSTCount.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://www.nowcoder.com/practice/e13bceaca5b14860b83cbcc4912c5d4a?tpId=101&&tqId=33235&rp=1&ru=/ta/programmer-code-interview-guide&qru=/ta/programmer-code-interview-guide/question-ranking

// https://leetcode.cn/problems/largest-bst-subtree/
struct _Zuo_MaxBSTCount {
    
    private struct Info {
        var maxVal: Int
        var minVal: Int
        var size: Int   //< 节点数
        var isBST: Bool
        init(_ maxVal: Int,_ minVal: Int,_ size: Int,_ isBST: Bool) {
            self.maxVal = maxVal
            self.minVal = minVal
            self.size = size
            self.isBST = isBST
        }
    }
    
    private func process(_ root: TreeNode?) -> Info? {
        guard let root = root else { return nil }
        let leftInfo = process(root.left)
        let rightInfo = process(root.right)
        
        var maxVal = 0
        var minVal = 0
        var size = 1
        var isBST = true
        
        if let left = leftInfo {
            maxVal = max(root.val, left.maxVal)
            minVal = min(root.val, left.minVal)
            size += left.size
            if !left.isBST {
                isBST = false
            }
            if left.maxVal >= root.val {
                isBST = false
            }
        }
        
        if let right = rightInfo {
            maxVal = max(root.val, right.maxVal)
            minVal = min(root.val, right.minVal)
            size += right.size
            if !right.isBST {
                isBST = false
            }
            if right.minVal <= root.val {
                isBST = false
            }
        }
        
        return Info(maxVal, minVal, size, isBST)
    }
    
    func maxBSTCount(_ root: TreeNode?) -> Int {
        guard let info = process(root) else { return 0 }
        return info.maxVal
    }
}
