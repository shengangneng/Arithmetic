//
//  _908_SmallestRangeI.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/18.
//

import Foundation

// https://leetcode.cn/problems/smallest-range-i/description/
struct _908_SmallestRangeI {
    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
        var maxVal = Int.min
        var minVal = Int.max
        for num in nums {
            maxVal = max(num, maxVal)
            minVal = min(num, minVal)
        }
        let res = maxVal - minVal - 2 * k
        return res < 0 ? 0 : res
    }
}
