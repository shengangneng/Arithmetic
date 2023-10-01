//
//  _343_IntegerBreak.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/integer-break/
struct _343_IntegerBreak {
    
    // 时间复杂度O(n^2) 空间复杂度O(n)
    func integerBreak(_ n: Int) -> Int {
        if n <= 1 { return n }
        if n == 2 { return 1 }
        var dp = Array(repeating: 0, count: n + 1)
        dp[2] = 1
        for i in 3...n {
//            for j in 1..<i-1 {
            for j in 1..<(i>>1) {
                // 这里是关键：j * dp[i -j]其实就是在不断的拆分了
                dp[i] = max(dp[i], max(j * (i - j), j * dp[i - j]))
            }
        }
        return dp[n]
    }
}
