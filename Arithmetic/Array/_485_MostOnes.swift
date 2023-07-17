//
//  _485_MostOnes.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/max-consecutive-ones/
struct _485_MostOnes {
    
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }

        var maxCount = 0
        var startIndex = -1
        var endIndex = -1

        for i in 0..<nums.count {
            let num = nums[i]
            if num == 1 {
                if startIndex == -1 {
                    startIndex = i
                }

                endIndex = i
            } else {
                // num == 0
                if startIndex == -1 {
                    continue
                }
                maxCount = max(maxCount, endIndex - startIndex + 1)
                startIndex = -1
            }

            if (i == nums.count - 1 && startIndex != -1) {
                maxCount = max(maxCount, endIndex - startIndex + 1)
            }
        }
        return maxCount
    }
}
