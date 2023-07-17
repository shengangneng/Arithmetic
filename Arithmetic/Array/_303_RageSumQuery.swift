//
//  _303_RageSumQuery.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/range-sum-query-immutable/

struct _303_RageSumQuery {
    class NumArray {

        var myMums: [Int]?

        init(_ nums: [Int]) {
            myMums = nums
        }
        
        func sumRange(_ left: Int, _ right: Int) -> Int {
            if myMums == nil {
                return -1
            }
            
            if left < 0 || right > myMums!.count || right > left {
                return -1
            }

            var result = 0
            for i in left...right {
                result += myMums![i]
            }
            return result
        }
    }
}
