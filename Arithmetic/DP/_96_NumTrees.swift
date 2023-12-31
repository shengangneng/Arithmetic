//
//  _96_NumTrees.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/unique-binary-search-trees/
struct _96_NumTrees {
    // n = 3
    // 如果1为头，就是左子树0节点，右子树2节点
    // 如果2为头，就是左子树1节点，右子树1节点
    // 如果3为头，就是左子树2节点，右子树0节点
    // 所以dp[3] = dp[0] * dp[2] + dp[1] * dp[1] + dp[2] * dp[0]
    // 所以dp[4] = dp[0] * dp[3] + dp[1] * dp[2] + dp[2] * dp[1] + dp[3] * dp[0]
    
    // 时间复杂度O(n^2)，空间复杂度O(n)
    func numTrees(_ n: Int) -> Int {
        if n == 1 { return 1 }
        var dp = Array(repeating: 0, count: n + 1)
        dp[0] = 1
        for i in 1...n {
            for j in 1...i {
                dp[i] += dp[j - 1] * dp[i - j]
            }
        }
        return dp[n]
    }
}
