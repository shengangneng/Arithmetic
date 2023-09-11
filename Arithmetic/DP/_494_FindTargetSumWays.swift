//
//  _494_FindTargetSumWays.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/target-sum/
struct _494_FindTargetSumWays {
    func findTargetSumWays(_ nums: [Int], _ target: Int) -> Int {
        let sum = nums.reduce(0, {$0 + $1})
        if abs(target) > sum { return 0 }
        let newSum = (sum + target)
        if newSum % 2 != 0 { return 0 }
        let size = newSum >> 1
        var dp = Array(repeating:0, count: size + 1)
        dp[0] = 1
        for i in 0..<nums.count {
            if nums[i] > size { continue }
            for j in (nums[i]...size).reversed() {
                dp[j] += dp[j - nums[i]]
            }
        }
        return dp[size]
    }
}



// target = 10
// sum = 37
// left - right = target
// left + right = sum
// 所以：left = (target + sum) / 2
