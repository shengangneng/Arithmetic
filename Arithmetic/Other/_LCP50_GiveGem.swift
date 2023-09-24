//
//  _LCP50_GiveGem.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/18.
//

import Foundation

// https://leetcode.cn/problems/WHnhjV/
struct _LCP50_GiveGem {
    func giveGem(_ gem: [Int], _ operations: [[Int]]) -> Int {
        var gem = gem
        for op in operations {
            let delta = gem[op[0]] / 2
            gem[op[0]] -= delta
            gem[op[1]] += delta
        }
        var maxVal = Int.min
        var minVal = Int.max
        for i in gem {
            maxVal = max(i, maxVal)
            minVal = min(i, minVal)
        }
        return maxVal - minVal
    }
}
