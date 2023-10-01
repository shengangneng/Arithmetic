//
//  _523_CheckSubarraySum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

// 连续子数组，整除 : 时空复杂度O(n)
class _523_CheckSubarraySum {
    func checkSubarraySum(_ nums: [Int], _ k: Int) -> Bool {
        var map = [0:-1]
        var sum = 0
        for i in 0..<nums.count {
            sum = (sum + nums[i]) % k
            if map[sum] != nil {
                let pos = map[sum]!
                if i - pos >= 2 {
                    return true
                }
            } else {
                map[sum] = i
            }
        }
        return false
    }
}
