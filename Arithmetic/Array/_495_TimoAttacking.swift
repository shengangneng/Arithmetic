//
//  _495_TimoAttacking.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/teemo-attacking/

struct _495_TimoAttacking {
    
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        var maxValue = 0
        var preValue = 0
        for num in timeSeries {
            // 这次应该要加上这么多
            if preValue == 0 || preValue < num {
                maxValue += duration
            } else {
                maxValue += duration - (preValue - num + 1)
            }
            preValue = num + duration - 1
        }
        return maxValue
    }
}
