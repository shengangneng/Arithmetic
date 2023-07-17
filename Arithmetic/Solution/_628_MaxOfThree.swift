//
//  _628_MaxOfThree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/maximum-product-of-three-numbers/

struct _628_MaxOfThree {
    func maximumProduct(_ nums: [Int]) -> Int {
        if nums.count < 3 {
            return 0
        }
        if nums.count == 3 {
            return nums[0] * nums[1] * nums[2]
        }
        var mNums = nums
        insertSort(&mNums)

        // 计算最大值
        return mNums[0] * mNums[1] * mNums[2]
    }

    // 插入排序，从大到小排序
    func insertSort(_ arr: inout [Int]) {
        let count = arr.count
        for i in 0..<count {
            let value = arr[i]
            var cur = i
            while (cur > 0 && value > arr[cur - 1]) {
                arr[cur] = arr[cur - 1]
                cur -= 1
            }
            arr[cur] = value
        }
    }
}
