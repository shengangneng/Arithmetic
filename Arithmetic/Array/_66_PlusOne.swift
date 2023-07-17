//
//  _66_PlusOne.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/plus-one/

struct _66_PlusOne {
    func plusOne(_ digits: [Int]) -> [Int] {
        var nums = digits
        let count = nums.count
        if nums[count - 1] < 9 {
            nums[count - 1] += 1
            return nums
        }
        if count == 1 {
            nums[count - 1] = 0
            nums.insert(1, at: 0)
            return nums
        }

        // 最后一位是9
        nums[count - 1] = 0
        for i in (0..<(count - 1)).reversed() {
            if i == 0 {
                if nums[0] < 9 {
                    nums[0] += 1
                } else {
                    nums[0] = 0
                    nums.insert(1, at: 0)
                }
                break
            }
            if nums[i] < 9 {
                nums[i] += 1
                return nums
            } else {
                nums[i] = 0
            }
        }
        return nums
    }
}
