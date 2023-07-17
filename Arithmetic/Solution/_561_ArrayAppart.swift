//
//  _561_ArrayAppart.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/array-partition/
struct _561_ArrayAppart {
    func arrayPairSum(_ nums: [Int]) -> Int {
        var mNums = nums
        insertSort(&mNums)

        let half = mNums.count / 2
        var result = 0
        for i in 0..<half {
            result += min(mNums[i * 2], mNums[i * 2 + 1])
        }
        return result
    }

    func insertSort(_ arr: inout [Int]) {
        let count = arr.count

        for i in 0..<count {
            let value = arr[i]
            var cur = i
            while (cur > 0 && value < arr[cur - 1]) {
                arr[cur] = arr[cur - 1]
                cur -= 1
            }
            arr[cur] = value
        }
    }
}
