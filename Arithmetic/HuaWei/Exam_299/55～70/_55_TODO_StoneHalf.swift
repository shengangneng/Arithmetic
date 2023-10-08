//
//  _55_StoneHalf.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/2.
//

import Foundation

class _55_StoneHalf {
    // dp[i][j]代表，i件物品，达到j重量，最少
    func test(_ input: String) -> Int {
        let nums = input.split(separator: " ").compactMap { Int(String($0)) }
        let sum = nums.reduce(0, +)
        if sum & 1 != 0 { return -1 }
        let target = sum >> 1
        let n = nums.count
        var dp = Array(repeating: Array(repeating: 0, count: target + 1), count: target + 1)
        for j in 0..<target + 1 {
            dp[0][j] = n
        }
        for i in 1..<nums.count + 1 {
            let num = nums[i - 1]
            for j in 1..<target + 1 {
                if j < num {
                    // 超出重量，只能不选
                    dp[i][j] = dp[i - 1][j]
                } else {
                    // 未超出重量，可以选也可以不选
                    dp[i][j] = min(dp[i - 1][j], dp[i - 1][j - num] + 1)
                }
            }
        }
        
        if dp[n][target] == n {
            return -1
        } else {
            return dp[n][target]
        }
    }
}
