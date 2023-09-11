//
//  _654_ConstructMaximumBinaryTree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/4.
//

import Foundation

// https://leetcode.cn/problems/maximum-binary-tree/
struct _654_ConstructMaximumBinaryTree {
    func constructMaximumBinaryTree(_ nums: [Int]) -> TreeNode? {
        return travesal(nums, 0, nums.count)
    }
    
    func travesal(_ nums: [Int], _ begin: Int, _ end: Int) -> TreeNode? {
        if end == begin { return nil }
        
        var maxVal = Int.min
        var maxIndex = begin
        for i in begin..<end {
            if (nums[i] > maxVal) {
                maxVal = nums[i]
                maxIndex = i
            }
        }
        var root = TreeNode(maxVal)

        if end - begin == 1 { return root}
        root.left = travesal(nums, begin, maxIndex)
        root.right = travesal(nums, maxIndex + 1, end)
        return root
    }
}
