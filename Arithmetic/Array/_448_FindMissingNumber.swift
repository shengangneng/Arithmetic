//
//  _448_FindMissingNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/find-all-numbers-disappeared-in-an-array/
struct _448_FindMissingNumber {
    func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
        var map = [Int : Int]()

        for num in nums {
            if map[num] == nil {
                map[num] = 1
            }
        }

        var arr = [Int]()
        for i in 1...nums.count {
            if map[i] == nil {
                arr.append(i)
            }
        }
        return arr
    }
}
