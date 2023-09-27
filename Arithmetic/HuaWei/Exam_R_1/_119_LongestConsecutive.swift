//
//  _119_LongestConsecutive.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _119_LongestConsecutive {
    // 特性1 ：两个数相减的长度不会大于数组长度
    // 特性2 ：（最大 + 最小） * n / 2 = total --》n = (total * 2) / (最大 + 最小)
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.count == 0 { return 0 }
        let nums = nums.sorted()
        var preNum = Int.min
        var maxCount = 0
        var count = 1
        for num in nums {
            if preNum == Int.min {
                preNum = num
            } else {
                if preNum == num { continue }
                if abs(preNum - num) <= 1 {
                    count += 1
                } else {
                    maxCount = max(maxCount, count)
                    count = 1
                }
                preNum = num
            }
        }
        maxCount = max(maxCount, count)
        return maxCount
    }
}
