//
//  _268_MissionNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/missing-number/
struct _268_MissionNumber {
    
    
    func missingNumber(_ nums: [Int]) -> Int {
        var n = nums.count
        var max = (1 + n) * n / 2

        var result = 0
        for num in nums {
            result += num
        }

        return max - result
    }
    
    
}
