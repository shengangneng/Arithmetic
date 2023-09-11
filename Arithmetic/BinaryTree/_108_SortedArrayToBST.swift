//
//  _108_SortedArrayToBST.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/convert-sorted-array-to-binary-search-tree/
struct _108_SortedArrayToBST {
    
    // 递归
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return traversal(nums, 0, nums.count - 1)
    }
    
    func traversal(_ num: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        if left > right { return nil }
        let mid = left + (right - left) / 2
        let root = TreeNode(num[mid])
        root.left = traversal(num, left, mid - 1)
        root.right = traversal(num, mid + 1, right)
        return root
    }
}
