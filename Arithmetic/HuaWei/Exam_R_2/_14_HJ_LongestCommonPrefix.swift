//
//  _14_HJ_LongestCommonPrefix.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

// https://leetcode.cn/problems/longest-common-prefix/description/
class _14_HJ_LongestCommonPrefix {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 { return strs.first! }
        // 找到最短的字符串
        var target: String = ""
        for str in strs {
            if str == "" { return "" }
            if target == "" {
                target = str
            } else {
                if str.count < target.count {
                    target = str
                }
            }
        }
        var res = ""
        for i in 0..<target.count {
            let start = target.startIndex
            let end = target.index(start, offsetBy: i)
            let cur = target[start...end]
            var all = true
            for str in strs {
                if !str.starts(with: cur) {
                    all = false
                }
            }
            if !all {
                break
            }
            res = String(cur)
        }
        return res
    }
}
