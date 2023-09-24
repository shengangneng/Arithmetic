//
//  _674_FindLengthOfLCIS.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _674_FindLengthOfLCIS {
    func findLengthOfLCIS(_ nums: [Int]) -> Int {
        var maxCount = 1
        var increCount = 1
        var preNum = nums[0]
        for i in 1..<nums.count {
            let num = nums[i]
            if num > preNum {
                increCount += 1
            } else {
                maxCount = max(maxCount, increCount)
                increCount = 1
            }
            preNum = num
            if i == nums.count - 1 {
                maxCount = max(maxCount, increCount)
            }
        }
        return maxCount
    }
}
