//
//  _16_ThreeSumClosest.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode.cn/problems/3sum-closest/description/
struct _16_ThreeSumClosest {
    func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
        let nums = nums.sorted()
        var res = nums[0] + nums[1] + nums[2]
        for i in 0..<nums.count {
            let num = nums[i]
            var l = i + 1
            var r = nums.count - 1
            while l < r {
                let sum = num + nums[l] + nums[r]
                if abs(target - sum) < abs(target - res) {
                    res = sum
                }
                if sum > target {
                    r -= 1
                } else if sum < target {
                    l += 1
                } else {
                    return res
                }
            }
        }
        return res
    }
}
