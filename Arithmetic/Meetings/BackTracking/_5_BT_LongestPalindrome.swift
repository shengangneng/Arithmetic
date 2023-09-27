//
//  _5_BT_LongestPalindrome.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

class _5_BT_LongestPalindrome {
    func longestPalindrome(_ s: String) -> String {
        let chars = Array(s)
        let n = chars.count
        var dp = Array(repeating: Array(repeating: false, count: n), count: n)

        var begin = 0
        var maxLen = 0
        for i in (0..<chars.count).reversed() { // 从右到左
            for j in i..<chars.count {          // 从左到右
                if i == j {
                    dp[i][j] = true
                } else if j - i == 1 {
                    dp[i][j] = (chars[i] == chars[j])
                } else {
                    dp[i][j] = (chars[i] == chars[j] && dp[i + 1][j - 1])
                }
                if dp[i][j] && j - i + 1 > maxLen {
                    maxLen = j - i + 1
                    begin = i
                }
            }
        }

        let startIndex = s.index(s.startIndex, offsetBy: begin)
        let endIndex = s.index(startIndex, offsetBy: maxLen)
        return String(s[startIndex..<endIndex])
    }
}
