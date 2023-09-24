//
//  _1342_NumberOfSteps.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// https://leetcode.cn/problems/number-of-steps-to-reduce-a-number-to-zero/description/
struct _1342_NumberOfSteps {
    
    func numberOfSteps(_ num: Int) -> Int {
        var num = num
        var count = 0
        while num != 0 {
            count += 1
            if num & 1 == 0 {
                num >>= 1
            } else {
                num -= 1
            }
        }
        return count
    }
}
