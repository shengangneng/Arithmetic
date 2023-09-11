//
//  _1049_LastStoneWeightII.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/last-stone-weight-ii/solutions/2420430/swift-by-howhyone-p0k1/
struct _1049_LastStoneWeightII {
    
    // 可以将数组分为两部分，最接近数组元素总和的一半时，结果是dp[target]
    // 那么另一半就是sum - dp[target]
    // 所以，结果就是(sum - dp[target]) - dp[target]
    func lastStoneWeightII(_ stones: [Int]) -> Int {
        var sum = stones.reduce(0, {$0 + $1})
        var target = sum / 2
        var dp = Array(repeating:0, count: target + 1)
        for i in 0..<stones.count {
            if stones[i] > target { continue }
            for j in (stones[i]...target).reversed() {
                dp[j] = max(dp[j], dp[j - stones[i]] + stones[i])
            }
        }
        return sum - dp[target] * 2
    }
}
