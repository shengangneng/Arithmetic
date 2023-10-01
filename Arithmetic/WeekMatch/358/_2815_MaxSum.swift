//
//  _2815_MaxSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _2815_MaxSum {
    
    func maxSum(_ nums: [Int]) -> Int {
        var map = [Int:[Int]]()
        for num in nums {
            let str = String(num)
            let chars = Array(str)
            let maxVal = chars.compactMap{Int(String($0))}.sorted().last!
            var arr = [Int]()
            if map[maxVal] != nil {
                arr = map[maxVal]!
            }
            arr.append(num)
            map[maxVal] = arr
        }
        
        var res = -1
        for (_, value) in map {
            if value.count < 2 { continue }
            var arr = value.sorted()
            res = max(res, arr[arr.count - 1] + arr[arr.count - 2])
        }
        return res
    }
}
