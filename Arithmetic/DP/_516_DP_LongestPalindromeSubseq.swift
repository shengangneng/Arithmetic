//
//  _516_DP_LongestPalindromeSubseq.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation
 
// dp[i][j]代表从i到j的最长回文，所以结果结果返回dp[0][s.count - 1]
class _516_DP_LongestPalindromeSubseq {
    func longestPalindromeSubseq(_ s: String) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: s.count), count: s.count)
        let chars = Array(s)
        for i in 0..<s.count {
            dp[i][i] = 1
        }
        for i in (0..<s.count).reversed() {
            for j in (i + 1)..<s.count {
                print("i = \(i), j = \(j)")
                if chars[i] == chars[j] {
                    dp[i][j] = dp[i + 1][j - 1] + 2
                } else {
                    dp[i][j] = max(dp[i + 1][j], dp[i][j - 1])
                }
            }
        }
        return dp[0][s.count - 1]
    }
}
