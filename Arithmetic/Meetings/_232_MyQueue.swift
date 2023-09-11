//
//  MyQueue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

// https://leetcode.cn/submissions/detail/464114937/
class MyQueue {

    private var stack1: [Int]
    private var stack2: [Int]

    init() {
        stack1 = [Int]()
        stack2 = [Int]()
    }
    
    func push(_ x: Int) {
        stack1.append(x)
    }
    
    func pop() -> Int {
        if empty() { return -1 }
        if !stack2.isEmpty {
            let node = stack2.removeLast()
            return node
        } else {
            while !stack1.isEmpty {
                stack2.append(stack1.removeLast())
            }
            return stack2.removeLast()
        }
    }
    
    func peek() -> Int {
        if empty() { return -1 }
        if !stack2.isEmpty {
            return stack2.last!
        } else {
            while !stack1.isEmpty {
                stack2.append(stack1.removeLast())
            }
            return stack2.last!
        }
    }
    
    func empty() -> Bool {
        return stack1.isEmpty && stack2.isEmpty
    }
}
