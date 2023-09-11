//
//  _921_MinAddToMakeValid.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

// https://leetcode.cn/problems/minimum-add-to-make-parentheses-valid/description/
struct _921_MinAddToMakeValid {
    // TODO: 这道题没看懂
    func minAddToMakeValid(_ s: String) -> Int {
        var queue = [Character]()
        for c in s {
            if queue.count != 0 && queue.last == "(" && c == ")" {
                queue.removeLast()
            } else {
                queue.append(c)
            }
        }
        return queue.count
    }
}
