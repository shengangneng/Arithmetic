//
//  _946_ValidStack.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

// https://leetcode.cn/problems/validate-stack-sequences/description/
struct _946_ValidStack {
    func validateStackSequences(_ pushed: [Int], _ popped: [Int]) -> Bool {
        var pushed = pushed
        var popped = popped
        var stack = [Int]()
        while !stack.isEmpty || !pushed.isEmpty {
            let first = pushed.first    // 1
            if first == popped.first {
                popped.removeFirst()
                pushed.removeFirst()
            } else if stack.last == popped.first {
                stack.removeLast()
                popped.removeFirst()
            } else {
                if !pushed.isEmpty {
                    stack.append(first!)
                    pushed.removeFirst()
                } else {
                    return false
                }
            }
        }
        return true
    }
}
