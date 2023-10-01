//
//  _HJ_32_DP_PassowrdCut.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation

/*
 
      a b c b a
    a 
    b
    c
    b
    a
 */
class _HJ_32_DP_PassowrdCut {
    func test(_ s: String) {
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
        print(dp[0][s.count - 1])
    }
}
