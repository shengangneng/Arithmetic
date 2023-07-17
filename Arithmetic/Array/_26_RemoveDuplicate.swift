//
//  _26_RemoveDuplicate.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/remove-duplicates-from-sorted-array/

struct _26_RemoveDuplicate {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.count < 2 {
            return nums.count
        }

        var resultIndex = 0
        var preNum = nums[0]

        for i in 0..<nums.count {
            let num = nums[i]
            if num != preNum {
                // 不等的时候，往resultIndex前面一个位置插入
                preNum = num
                resultIndex += 1
                nums.swapAt(i, resultIndex)
            }
        }
        return resultIndex+1
    }
}
