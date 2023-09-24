//
//  _1413_MinStartValue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/18.
//

import Foundation

// https://leetcode.cn/problems/minimum-value-to-get-positive-step-by-step-sum/description/
struct _1413_MinStartValue {
    func minStartValue(_ nums: [Int]) -> Int {
        var min2 = Int.max
        var total = 0
        for num in nums {
            total += num
            min2 = min(total, min2)
        }
        if min2 > 0 {
            return 1
        } else {
            return abs(min2) + 1
        }
    }
}
