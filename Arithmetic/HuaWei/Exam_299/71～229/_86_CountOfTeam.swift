//
//  _86_CountOfTeam.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/4.
//

import Foundation

class _86_CountOfTeam {
    func test(_ input1: String, _ input2: String, _ input3: String) {
        let n = Int(input1)!
        var nums = input2.split(separator: " ").compactMap { Int(String($0)) }
        let target = Int(input3)!
        nums = nums.sorted()
        var count = 0
        
        var r = n - 1
        while nums[r] >= target {
            count += 1
            r -= 1
        }
        var l = 0
        while l < r {
            if nums[l] + nums[r] >= target {
                count += 1
                l += 1
                r -= 1
            } else {
                l += 1
            }
        }
        
        print(count)
    }
}
