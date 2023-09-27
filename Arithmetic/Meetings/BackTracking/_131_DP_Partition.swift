//
//  _131_DP_Partition.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

// https://leetcode.cn/problems/palindrome-partitioning/submissions/
class _131_DP_Partition {
    
    private var res = [[String]]()
    private var path = [String]()
    private var dp: [[Bool]] = [[Bool]]()
    private var chars: [Character] = []
    func partition(_ s: String) -> [[String]] {
        // 转换成数组，更方便操作
        chars = Array(s)
        dp = Array(repeating: Array(repeating: false, count: chars.count), count: chars.count)
        calIsLoopStr()
        dfs(&chars, 0)
        return res
    }

    private func dfs(_ chars: inout [Character], _ start: Int) {
        if start >= chars.count {
            res.append(path)
            return
        }
        for i in start..<chars.count {
            let sub = chars[start...i]
//            if !isLoopStr(start, i, &chars) { continue }  // 如果不是回文，剪枝
            if !dp[start][i] { continue }   // 如果不是回文，剪枝
            path.append(String(sub))
            dfs(&chars, i + 1)
            path.removeLast()   // 回溯
        }
    }

    // 判断是否回文字串，可以使用动态规划进行优化
//    private func isLoopStr(_ start: Int, _ end: Int, _ chars: inout [Character]) -> Bool {
//        var start = start
//        var end = end
//        while start < end {
//            if chars[start] != chars[end] { return false }
//            start += 1
//            end -= 1
//        }
//        return true
//    }
    
    // 使用动态规划，dp数组提前计算好哪些是回文【怎么感觉更慢了】
    private func calIsLoopStr() {
        for i in (0..<chars.count).reversed() { // 从右到左
            for j in i..<chars.count {          // 从左到右
                if i == j {
                    // 同一元素，自己跟自己肯定是回文
                    dp[i][j] = true
                } else if (j - i == 1) {
                    // 相邻元素，是否回文取决于两元素是否相等
                    dp[i][j] = (chars[i] == chars[j])
                } else {
                    // 其他情况：一人退一步的情况 再结合当前元素是否相等
                    dp[i][j] = (chars[i] == chars[j] && dp[i + 1][j - 1])
                }
            }
        }
    }
}
