//
//  _Offer42_MaxSubArray.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/5.
//

import Foundation

// https://leetcode.cn/problems/lian-xu-zi-shu-zu-de-zui-da-he-lcof/description/
struct _Offer42_MaxSubArray {
    
    
    func maxSubArray(_ nums: [Int]) -> Int {
        var res = nums[0]
        var pre = nums[0]
        var cur = 0
        for i in 1..<nums.count {
            // 更新cur
            cur = nums[i] + max(pre, 0)
            // 更新最大值
            res = max(res, cur)
            // 更新上一个i - 1的值
            pre = cur
        }
        return res
    }
    
    // 看不懂
    func maxSubArray1(_ nums: [Int]) -> Int {
        var nums = nums
        var res = nums[0]
        for i in 1..<nums.count {
            nums[i] += max(nums[i - 1], 0)
            res = max(res, nums[i])
        }
        return res
    }
}
