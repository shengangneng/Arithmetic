//
//  _1_TwoSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/two-sum/
struct _1_TwoSum {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        if nums.count < 2 {
            return []
        }

        // key存值，value存index
        var map = [Int : Int]()

        for i in 0..<nums.count {
            let num = nums[i]
            let result = target - num
            if map[result] != nil {
                return [i, map[result]!]
            }
            map[num] = i
        }
        return []
    }
}
