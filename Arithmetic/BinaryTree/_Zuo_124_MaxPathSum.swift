//
//  _Zuo_124_MaxPathSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/binary-tree-maximum-path-sum/
//
struct _Zuo_124_MaxPathSum {
    
    func maxPathSum0(_ root: TreeNode?) -> Int {
        var maxVal = Int.min
        _ = process(root, &maxVal)
        return maxVal
    }

    func process(_ root: TreeNode?, _ maxVal: inout Int) -> Int {
        guard let root = root else { return 0 }
        let left = max(0, process(root.left, &maxVal))
        let right = max(0, process(root.right, &maxVal))
        maxVal = max(maxVal, left + right + root.val)
        return max(left, right) + root.val
    }
    
    
    
    // 左神递归套路：
    private struct Info {
        var maxVal: Int         //< 自身的最大值
        var maxValWithH: Int    //< 经过头节点的最大值
        init(_ maxVal: Int,_ maxValOverH: Int) {
            self.maxVal = maxVal
            self.maxValWithH = maxValOverH
        }
    }
    
    private func process(_ node: TreeNode?) -> Info {
        // 题目备注：最小值最大值在【-1000~1000】
        guard let node = node else { return Info(-2000, -2000) }
        let leftInfo = process(node.left)
        let rightInfo = process(node.right)
        
        let m1 = leftInfo.maxVal
        let m2 = rightInfo.maxVal
        let m3 = leftInfo.maxValWithH + rightInfo.maxValWithH + node.val
        
        // 经过头节点的最大值
        let h1 = leftInfo.maxValWithH + node.val
        let h2 = rightInfo.maxValWithH + node.val
        let h3 = node.val
        var maxValOverH = max(max(h1, h2), h3)
        // 经过头、不经过头的最大值
        var maxVal = max(max(max(maxValOverH, m1), m2), m3)
        
        return Info(maxVal, maxValOverH)
    }
    
    func maxPathSum(_ root: TreeNode?) -> Int {
        let val = process(root).maxVal
        return val
    }
}
