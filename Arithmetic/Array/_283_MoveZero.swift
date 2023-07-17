//
//  _283_MoveZero.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/move-zeroes/

struct _283_MoveZero {
    
    func moveZeroes(_ nums: inout [Int]) {
        let count = nums.count
        if count <= 1 {
            return
        }

        var preInsertIndex = -1

        for i in 0..<count {
            let num = nums[i]
            if num == 0 {
                if preInsertIndex == -1 {
                    preInsertIndex = i
                }
                continue
            } else {
                if preInsertIndex == -1 {
                    continue
                }
                // 每一个不等于0的，都要查看下是否需要往前插
                if i != preInsertIndex {
                    nums.swapAt(preInsertIndex, i)
                    preInsertIndex += 1
                }
            }
        }
    }
}
