//
//  _891_SumSubseqWidths.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// https://leetcode.cn/problems/sum-of-subsequence-widths/
struct _891_SumSubseqWidths {
    
    func sumSubseqWidths(_ nums: [Int]) -> Int {
        // 0 3 1 6 2 2 7    原来
        // 3 2 5 4 0 5      跨度2
        // 3 5 5 4 5        跨度3
        // 6 5 5 5          跨度4
        // 6 5 6            跨度5
        // 6 6              跨度6
        // 7
        
        // 2 1 3            原来
        
        
        
        // 1 2              跨度2
        // 1 2              跨度3
        // 2                跨度4
        // 6 5 6            跨度5
        // 6 6              跨度6
        // 7
        if nums.count == 1 { return 0 }
        var res = 0
//        for step in 1...(nums.count - 1) {
//            for i in 0..<(nums.count - 1) {
//                if i + step > nums.count - 1 { break }
//                // 比如i = 0, 走两步
//                var minVal = Int.max
//                var maxVal = Int.min
//                for j in i...(i+step) {
//                    minVal = min(minVal, nums[j])
//                    maxVal = max(maxVal, nums[j])
//                }
//                res += (maxVal - minVal)
//            }
//        }
        return res
    }
}
