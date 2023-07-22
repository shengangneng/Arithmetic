//
//  _1499_Hard_FindMaxOfEquation.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

// https://leetcode.cn/problems/max-value-of-equation/
struct _1499_Hard_FindMaxOfEquation {
    
    
    // 暴力破解，但是显示时间超长了。。
    func findMaxValueOfEquation(_ points: [[Int]], _ k: Int) -> Int {
        var maxValue = Int.min
        let count = points.count
        for i in 0..<count - 1 {
            var prePoint = points[i]
            for j in (i+1)..<count {
                let point = points[j]
                if abs(point[0] - prePoint[0]) <= k {
                    let value = point[1] + prePoint[1] + abs(point[0] - prePoint[0])
                    if value > maxValue {
                        maxValue = value
                    }
                } else {
                    prePoint = point
                }
            }
        }
        return maxValue
    }
}
