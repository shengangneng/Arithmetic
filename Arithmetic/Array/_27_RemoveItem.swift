//
//  _27_RemoveItem.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/remove-element/

struct _27_RemoveItem {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var resultIndex = -1
        for i in 0..<nums.count {
            let num = nums[i]
            if num != val {
                resultIndex += 1
                nums.swapAt(resultIndex, i)
            }
        }
        return resultIndex + 1
    }
}
