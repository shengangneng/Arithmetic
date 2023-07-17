//
//  _905_SortByParity.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/sort-array-by-parity/

struct _905_SortByParity {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        if nums.count <= 1 {
            return nums
        }

        var numsM = nums
        var head = 0
        var tail = numsM.count - 1

        while head < tail {
            if numsM[head] % 2 == 0 {
                // 偶数
                head += 1
            } else {
                // 奇数
                numsM.swapAt(head, tail)
                tail -= 1
            }
        }
        return numsM
    }
}
