//
//  _594_LongestSeque.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation
// https://leetcode.cn/problems/longest-harmonious-subsequence/

struct _594_LongestSeque {
    func findLHS(_ nums: [Int]) -> Int {
        var maxV: Int = 0
        for i in 0..<nums.count {
            let valI = nums[i]
            var minResult: Int = 0
            var maxResult: Int = 0
            // 如果i作为最小值，如果i作为最大值
            for j in 0..<nums.count {
                if i == j {
                    continue
                }
                let valJ = nums[j]
                if (valJ - valI == 1) {
                    minResult += 1
                    continue
                }
                if (valI - valJ == 1) {
                    maxResult += 1
                }
            }
            maxV = max(max(minResult, maxResult), maxV)
        }
        return maxV
    }
}
