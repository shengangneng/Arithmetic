//
//  _39_DP_CombinationSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _39_DP_CombinationSum {
    private var res = [[Int]]()
    private var path = [Int]()
    func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var candies = candidates.sorted()
        dfs(target, 0, &candies, 0)
        return res
    }

    // 加上start控制，就不需要做去重了
    func dfs(_ target: Int, _ sum: Int, _ candies: inout [Int], _ start: Int) {
        if sum >= target {
            if sum == target {
                res.append(path)
            }
            return
        }

        for i in start..<candies.count {
            let num = candies[i]
            if sum + num > target { return }    // 剪枝
            path.append(num)
            dfs(target, sum + num, &candies, i) // 不用i+1了，这样就可以做到避免重复访问了
            path.removeLast()   // 回溯
        }
    }
}
