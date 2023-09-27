//
//  _93_DP_RestoreIpAddresses.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

// https://leetcode.cn/problems/restore-ip-addresses/
class _93_DP_RestoreIpAddresses {
    func isValid(s: [Character], start: Int, end: Int) -> Bool {
        guard start <= end, start >= 0, end < s.count else { return false } // 索引不合法
        if start != end, s[start] == "0" { return false } // 以0开头的多位数字不合法
        var num = 0
        for i in start ... end {
            let c = s[i]
            guard c >= "0", c <= "9" else { return false } // 非数字不合法
            let value = c.asciiValue! - ("0" as Character).asciiValue!
            num = num * 10 + Int(value)
            guard num <= 255 else { return false } // 大于255不合法
        }
        return true
    }
    func restoreIpAddresses(_ s: String) -> [String] {
        var s = Array(s) // 转换成字符数组以便于比较
        var result = [String]() // 结果
        func backtracking(startIndex: Int, pointCount: Int) {
            guard startIndex < s.count else { return } // 索引不合法
            // 结束条件
            if pointCount == 3 {
                // 最后一段也合法，则收集结果
                if isValid(s: s, start: startIndex, end: s.count - 1) {
                    result.append(String(s))
                }
                return
            }

            for i in startIndex ..< s.count {
                // 判断[starIndex, i]子串是否合法，合法则插入“.”，否则结束本层循环
                if isValid(s: s, start: startIndex, end: i) {
                    s.insert(".", at: i + 1) // 子串后面插入“.”
                    backtracking(startIndex: i + 2, pointCount: pointCount + 1) // 注意这里时跳2位，且通过pointCount + 1局部变量隐藏了pointCount的回溯
                    s.remove(at: i + 1) // 回溯
                } else {
                    break
                }
            }
        }
        backtracking(startIndex: 0, pointCount: 0)
        return result
    }
}
