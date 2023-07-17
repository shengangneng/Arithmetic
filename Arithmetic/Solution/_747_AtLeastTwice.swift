//
//  _747_AtLeastTwice.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/largest-number-at-least-twice-of-others/
struct _747_AtLeastTwice {
    func dominantIndex(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return -1
        }
        if (nums.count == 1) {
            return 0
        }
        
        var maxValue = 0
        var secValue = 0
        var maxIndex = 0

        for i in 0..<nums.count {
            let value = nums[i]
            if value > maxValue {
                secValue = maxValue
                maxValue = value
                maxIndex = i
            } else {
                if value > secValue {
                    secValue = value
                }
            }
        }
        if maxValue >= secValue * 2 {
            return maxIndex
        }
        return -1
    }
}
