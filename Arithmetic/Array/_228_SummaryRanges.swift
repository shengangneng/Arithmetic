//
//  _228_SummaryRanges.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/summary-ranges/

struct _228_SummaryRanges {
    
    func summaryRanges(_ nums: [Int]) -> [String] {
        let count = nums.count
        if count == 0 {
            return []
        }
        if count == 1 {
            return ["\(nums[0])"]
        }

        var preNumber = nums[0]
        var startNumber = nums[0]

        var arr = [String]()
        for i in 0..<count {
            let num = nums[i]
            if num - preNumber > 1 {
                // 当前数字不能用上，要先打印上去
                if startNumber == preNumber {
                    arr.append("\(startNumber)")
                } else {
                    arr.append("\(startNumber)->\(preNumber)")
                }
                preNumber = num
                startNumber = num
            } else {
                // 说明当前数字也可以用上
                preNumber = num
            }
            if i == count - 1 {
                if startNumber == preNumber {
                    arr.append("\(startNumber)")
                } else {
                    arr.append("\(startNumber)->\(preNumber)")
                }
            }
        }
        return arr
    }
}
