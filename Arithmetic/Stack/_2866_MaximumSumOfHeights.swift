//
//  _2866_MaximumSumOfHeights.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _2866_MaximumSumOfHeights {
    func maximumSumOfHeights(_ maxHeights: [Int]) -> Int {
        let heights = maxHeights
        let n = heights.count
        var pre = Array(repeating: 0, count: n + 1)
        var suf = Array(repeating: 0, count: n + 1)
        // 单调栈求前缀和
        var stack = [Int]()
        for i in 0..<n {
            // 求第一个最大
            while !stack.isEmpty && heights[i] < heights[stack.last!] {
                stack.removeLast()
            }
            let j = stack.isEmpty ? -1 : stack.last!
            pre[i + 1] = pre[j + 1] + (i - j) * heights[i]
            stack.append(i)
        }
        stack.removeAll()

        // 单调栈求后缀和
        for i in (0...(n - 1)).reversed() {
            while !stack.isEmpty && heights[i] < heights[stack.last!] {
                stack.removeLast()
            }
            let j = stack.isEmpty ? n : stack.last!
            suf[i] = suf[j] + (j - i) * heights[i]
            stack.append(i)
        }

        // 合并
        var res = 0
        for i in 0..<n {
            res = max(res, pre[i + 1] + suf[i] - heights[i])
        }
        return res
    }
}
