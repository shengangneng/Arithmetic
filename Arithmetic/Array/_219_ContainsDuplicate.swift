//
//  _219_ContainsDuplicate.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/contains-duplicate-ii/
struct _219_ContainsDuplicate {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        if nums.count < 2 {
            return false
        }

        // key存值，value存index
        var map = [Int : Int]()
        for i in 0..<nums.count {
            let num = nums[i]
            if map[num] == nil {
                map[num] = i
            } else {
                if abs(i - map[num]!) <= k {
                    return true
                }
                // 需要更新i的位置
                map[num] = i
            }
        }
        return false
    }
}
