//
//  _300_DP_LengthOfLIS.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

class _300_DP_LengthOfLIS {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        if nums.count == 1 { return 1 }
        let n = nums.count
        var dp = Array(repeating: 1, count: nums.count)

        var res = 0
        // 从左到右
        for i in 0..<n {        // 终点
            for j in 0..<i {    // 起点
                if nums[i] > nums[j] {  // 如果当前终点的值，是比j的值要大的，那么i的结果，肯定是j最长结果的基础上再+1
                    dp[i] = max(dp[i], dp[j] + 1)
                }
                res = max(res, dp[i])
            }
        }
        return res
    }
}
