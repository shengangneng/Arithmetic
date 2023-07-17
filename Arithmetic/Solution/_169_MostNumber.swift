//
//  _169_MostNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/majority-element/
struct _169_MostNumber {
    
    // hashmap法
    func majorityElement(_ nums: [Int]) -> Int {
        var map: Dictionary<Int, Int> = [:]
        for num in nums {
            map[num] = (map[num] == nil ? 1 : map[num]! + 1)
            if (map[num]! > nums.count / 2) {
                return num
            }
        }

        return -1;
    }
    
    
    // 投票法
//    func majorityElement(_ nums: [Int]) -> Int {
//
//        var count = 0
//        var card = 0
//        for i in nums {
//            if count == 0 {
//                card = i
//            }
//            if (card == i) {
//                count += 1
//            } else {
//                count += 0
//            }
//        }
//        return card
//    }
}
