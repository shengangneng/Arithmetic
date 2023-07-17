//
//  _20_ValidKuoHao.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://leetcode.cn/problems/valid-parentheses/
struct _20_ValidKuoHao {
    
    func isValid(_ s: String) -> Bool {
        if s.count % 2 != 0 {
            return false
        }
        
        var stack = MyStack<Character>()
        for c in s {
            if c == "(" {
                stack.push(")")
            } else if c == "{" {
                stack.push("}")
            } else if c == "[" {
                stack.push("]")
            } else {
                // ) } ]
                let ca = stack.pop()
                if ca != c {
                    return false
                }
            }
        }
        
        
        return stack.isEmpty()
    }
    
    struct MyStack<Character> {
        var arr = [Character]()
        mutating func push(_ ele: Character) {
            arr.append(ele)
        }
        mutating func pop() -> Character? {
            if arr.isEmpty {
                return nil
            }
            let lastEle = arr.last
            arr.removeLast()
            return lastEle
        }
        func isEmpty() -> Bool {
            return arr.isEmpty
        }
    }
}
