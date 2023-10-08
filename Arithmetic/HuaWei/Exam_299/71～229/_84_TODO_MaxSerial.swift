//
//  _84_TODO_MaxSerial.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/4.
//

import Foundation

class _84_TODO_MaxSerial {
    func test(_ input: String, _ input2: String) {
        let target = Int(input2)
        let nums = input.split(separator: ",").compactMap { Int(String($0)) }
        var dp = Array(repeating: 1, count: nums.count)
        var sum = nums[0]
        for i in 1..<nums.count {
            if nums[i] > nums[i - 1] {
                dp[i] = dp[i - 1] + 1
                sum += nums[i]
            } else {
                sum = nums[i]
            }
            if sum == target {
                print(dp[i])
                return
            }
        }
        print(-1)
    }
}
