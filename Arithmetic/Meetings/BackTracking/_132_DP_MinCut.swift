//
//  _132_MinCut.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _132_DP_MinCut {
    
    private var chars = [Character]()
    private var counts = [Int]()    // 记录下当前分割数量即可
    private var minCount = Int.max  // 记录下最小的分割数量
    func minCut(_ s: String) -> Int {
        chars = Array(s)
        counts = Array(repeating: Int.max, count: chars.count)
        dfs(0, 0)
        return minCount
    }

    private func dfs(_ start: Int, _ count: Int) {
        if start >= chars.count {
            minCount = min(count - 1, minCount)
            return
        }
        
        // 剪枝
        if count < counts[start] {
            counts[start] = count
        } else {
            return
        }
        
        // 原来的方式会超时
//        for i in start..<chars.count {
        // 贪心，从长到短遍历，时间效率更高
        for i in (start...chars.count - 1).reversed() {
            if !isLoopStr(start, i) { continue }
            dfs(i + 1, (count + 1)) // 包含了回溯
        }
    }

    private func isLoopStr(_ start: Int, _ end: Int) -> Bool {
        var l = start
        var r = end
        while l < r {
            if chars[l] != chars[r] { return false }
            l += 1
            r -= 1
        }
        return true
    }
}
