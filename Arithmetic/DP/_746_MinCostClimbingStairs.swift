//
//  _746_MinCostClimbingStairs.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/6.
//

import Foundation

// https://leetcode.cn/problems/climbing-stairs/
struct _746_MinCostClimbingStairs {
    
    // 迭代 - 1
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        var dp = Array(repeating: 0, count: cost.count + 1)
        dp[0] = cost[0]
        dp[1] = cost[0]
        for i in 2...cost.count {
            dp[i] = min(dp[i - 1] + cost[i - 1], dp[i - 2] + cost[i - 2])
        }
        let res = dp[cost.count]
        return res
    }
    
    // 迭代2 - 优化，只用2个变量
    func minCostClimbingStairs1(_ cost: [Int]) -> Int {
        var dp0 = 0
        var dp1 = 0
        var res = 0
        for i in 2...cost.count {
            res = min(dp1 + cost[i - 1], dp0 + cost[i - 2])
            dp0 = dp1
            dp1 = res
        }
        return res
    }
}
