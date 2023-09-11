//
//  _416_CanPartition.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/partition-equal-subset-sum/
// 类似的题目：698 ：https://leetcode.cn/problems/partition-to-k-equal-sum-subsets/
// 类似的题目：473 ：https://leetcode.cn/problems/matchsticks-to-square/
struct _416_CanPartition {
    
    // 如果出现了某些数量的和为总数量的一半，那么说明肯定能分成2组
    func canPartition(_ nums: [Int]) -> Bool {
        let sum = nums.reduce(0, { $0 + $1})
        if sum % 2 != 0 { return false }
        let target = sum / 2
        var dp = Array(repeating:0, count: target + 1)
        for i in 0..<nums.count {
            // 如果某一个元素的重量，已经超过一半了，那么不可能完成分割的
            if nums[i] > target { return false }
            for j in (nums[i]...target).reversed() {
                dp[j] = max(dp[j], dp[j - nums[i]] + nums[i])
            }
        }
        return dp[target] == target
    }
}
