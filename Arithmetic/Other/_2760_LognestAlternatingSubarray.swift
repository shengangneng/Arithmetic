//
//  _2760_LognestAlternatingSubarray.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// TODO: 这道题特别多细节
// https://leetcode.cn/problems/longest-even-odd-subarray-with-threshold/description/
struct _2760_LognestAlternatingSubarray {
    
    func longestAlternatingSubarray(_ nums: [Int], _ threshold: Int) -> Int {
        // l 是从偶数数字开始
        // 偶奇偶奇...
        // 最大数字不能超过threshold

        var count = 0
        var res = 0
        for num in nums {
            // 发现数字超过了threshold
            if num > threshold {
                if count != 0 {
                    res = max(res, count)
                    count = 0
                }
                continue
            }
            // 还没找到第一个数字
            if count == 0 {
                if num % 2 == 0 {
                    count = 1
                }
                continue
            }
            // 判断当前数字是奇数还是偶数
            if num % 2 != count % 2 {
                res = max(res, count)
                count = 0
                if num % 2 != 0 {
                    continue
                }
            }
            count += 1
        }
        return max(res, count)
    }
}

