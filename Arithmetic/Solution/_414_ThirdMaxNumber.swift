//
//  _414_ThirdMaxNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/third-maximum-number/
struct _414_ThirdMaxNumber {
    func thirdMax(_ nums: [Int]) -> Int {
        if nums.count == 1 {
            return nums[0]
        }
        if nums.count == 2 {
            return nums[0] > nums[1] ? nums[0] : nums[1]
        }

        // 数量3个以上了
        var max = Int.min
        var second = Int.min
        var third = Int.min
        for num in nums {
            if num <= third {
                continue
            }
            if num > max {
                third = second
                second = max
                max = num
            } else if num > second {
                third = second
                second = num
            } else if num > third {
                third = num
            }
        }
        return third
    }
}
