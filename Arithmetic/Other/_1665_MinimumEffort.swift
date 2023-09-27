//
//  _1665_MinimumEffort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

// https://leetcode.cn/problems/minimum-initial-energy-to-finish-tasks/
class _1665_MinimumEffort {
    func minimumEffort(_ tasks: [[Int]]) -> Int {
        var tasks = tasks.sorted { v1, v2 in
            if (v1[1] - v1[0]) == (v2[1] - v2[0]) {
                return v1[1] > v2[1]
            } else {
                return (v1[1] - v1[0]) > (v2[1] - v2[0])
            }
        }
        var sum = 0
        for task in tasks {
            sum += task[0]
        }
        let origin = sum
        for task in tasks {
            if sum < task[1] {
                let rest = task[1] - sum
                sum += rest
            }
            sum -= task[0]
        }
        return origin + sum
    }
}
