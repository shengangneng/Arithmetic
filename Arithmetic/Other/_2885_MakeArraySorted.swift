//
//  _2885_MakeArraySorted.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://leetcode.cn/contest/biweekly-contest-113/problems/minimum-right-shifts-to-sort-the-array/

struct _2885_MakeArraySorted {
    func minimumRightShifts(_ nums: [Int]) -> Int {
        var increCount = 1                  // 记录递增了多少个数量
        var preValue = nums[0]
        var findDes = false                 // 是否出现了逆序
        for i in 1..<nums.count {
            let num = nums[i]
            // 如果出现了逆序的情况，那么后面出现的数字都不能比第一个数字大
            if findDes && num > nums[0] {
                return -1
            }
            if num > preValue {
                // 当前数字比上一个数字大
                increCount += 1
                preValue = num
            } else {
                // 当前数字比上一个数字小
                preValue = num
                increCount = 1
                if findDes { return -1 }    // 不能出现两次逆序
                findDes = true
            }
        }
        return findDes ? increCount : 0
    }
}
