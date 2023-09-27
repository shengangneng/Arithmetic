//
//  _40_CombinationSum2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

// https://leetcode.cn/problems/combination-sum-ii/description/
class _40_CombinationSum2 {
    
    private var res = [[Int]]()
    private var path = [Int]()
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        var candies = candidates.sorted()
        dfs(target, 0, 0, &candies)
        return res
    }

    func dfs(_ target: Int, _ sum: Int, _ start: Int, _ candies: inout [Int]) {
        if sum >= target {
            if sum == target {
                res.append(path)
            }
            return
        }
        for i in start..<candies.count {
            let num = candies[i]
            // 这里是剪枝关键：如果当前和上一个是一样的，就跳过【树层去重】
            if i > start && candies[i] == candies[i - 1] { continue }
            if sum + num > target { return } // 剪枝
            path.append(num)
            dfs(target, sum + num, i + 1, &candies) // 这是i + 1，因为每个元素只能使用一次（是纵向/树枝的去重）
            path.removeLast()
        }
    }
}
