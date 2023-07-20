//
//  _645_MisMatch.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/set-mismatch/
struct _645_MisMatch {
    func findErrorNums(_ nums: [Int]) -> [Int] {
        var map = [Int : Int]()
        // 找到重复的数字
        var sameNum = 0
        var result = 0
        for num in nums {
            result += num
            if map[num] == nil {
                map[num] = 1
            } else {
                sameNum = num
            }
        }
        let originResult = (1 + nums.count) * nums.count / 2

        let missNum = originResult + sameNum - result

        return [sameNum, missNum]
    }
}
