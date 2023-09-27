//
//  _LCR_179_TwoSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// https://leetcode.cn/problems/he-wei-sde-liang-ge-shu-zi-lcof/description/

class _LCR_179_TwoSum {
    func twoSum(_ price: [Int], _ target: Int) -> [Int] {
        if price.count <= 1 { return [] }
        var l = 0
        var r = price.count - 1
        while l < r {
            let sum = price[l] + price[r]
            if sum == target {
                return [price[l], price[r]]
            } else if sum > target {
                r -= 1
            } else {
                l += 1
            }
        }
        return []
    }
}
