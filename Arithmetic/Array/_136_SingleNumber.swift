//
//  _136_SingleNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/single-number/
struct _136_SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }

        var result = nums[0]
        for i in 1..<nums.count {
            result ^= nums[i]
        }
        return result
    }
}
