//
//  _8_RestrandFood.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 14   10 4 5      -- 3    // 10 14 19
// 3    10 4 5      -- 7    // 10 14 19
// 5    6 10 3      -- 6    // 6 16 19      // ceil((total - first) / i)

// 假设答案是x，那么
// first >= nums[0]
// 1x + first >= nums[0] + nums[1]
// 2x + first >= nums[0] + nums[1] + nums[2]
// 【34分钟】
class _8_RestrandFood {
    func test(_ input1: String, _ input2: String) {
        let nums = input2.split(separator: " ").compactMap { Int(String($0)) }
        let first = Int(input1)!
        var numsSum = [Int]()
        
        for num in nums {
            if numsSum.count == 0 {
                numsSum.append(num)
            } else {
                numsSum.append(numsSum.last! + num)
            }
        }
        
        var res = 0
        let firstNeed = first < nums[0]
        for i in 0..<numsSum.count {
            let num = numsSum[i]
            let rest = num - first
            if i == 0 {
                if firstNeed {
                    // 如果第一份就需要补充了
                    res = max(abs(rest), res)
                }
            } else {
                res = max(Int(ceil(Double(rest) / Double(i + (firstNeed ? 1 : 0)))), res)
            }
        }
        print(res)
    }
    
}
