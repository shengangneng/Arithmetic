//
//  _1614_MaxDepth.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://leetcode.cn/problems/maximum-nesting-depth-of-the-parentheses/
struct _1614_MaxDepth {
    func maxDepth(_ s: String) -> Int {
        var stack = [Character]()
        var maxCount = 0
        for str in s {
            if str == "(" {
                // 入栈
                stack.append(str)
                maxCount = max(maxCount, stack.count)
            } else if str == ")" {
                stack.removeLast()
            }
        }
        return stack.count == 0 ? maxCount : 0
    }
}
