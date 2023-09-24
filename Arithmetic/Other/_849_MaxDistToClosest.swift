//
//  _849_MaxDistToClosest.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// https://leetcode.cn/problems/maximize-distance-to-closest-person/description/
struct _849_MaxDistToClosest {
    func maxDistToClosest(_ seats: [Int]) -> Int {
        var from = -1
        var maxCount = 0
        for i in 0..<seats.count {
            let seat = seats[i]
            if seat == 0 {
                continue
            } else {
                if from == -1 {
                    maxCount = max(maxCount, i - from - 1)
                } else {
                    maxCount = max(maxCount, (i - from) / 2)
                }
                from = i
            }
        }
        return max(maxCount, seats.count - 1 - from)
    }
}
