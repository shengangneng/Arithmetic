//
//  _316_RemoveDuplicateLetters.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _316_RemoveDuplicateLetters {
    func removeDuplicateLetters(_ s: String) -> String {
        var record = [Int](repeating: 0, count: 26)
        var stack: String = ""
        
        let aAsciiValue = ("a" as Character).asciiValue!
        for c in s {
            let index = Int((c as Character).asciiValue! - aAsciiValue)
            record[index] += 1
        }
        
        for c in s {
            let cIndex = Int((c as Character).asciiValue! - aAsciiValue)
            
            if stack.contains(c) {
                // 如果栈已经包含该字符，跳过
                record[cIndex] -= 1
            } else {
                // 取出栈顶字符，当前字符要比栈顶字符字典序 小，并且剩余数量 > 1
                while let topLetter = stack.last,
                      c < topLetter,
                      record[Int(topLetter.asciiValue! - aAsciiValue)] > 1 {
                    // 剩余数量 -1
                    record[Int(topLetter.asciiValue! - aAsciiValue)] -= 1
                    _ = stack.popLast()
                }
                stack.append(c)
            }
        }
        return stack
    }
}

// adbcdabddddc
// [2224]
// a -- stack = a
// d -- 字典序比栈顶a大 --- ad
// b -- 字典序比栈顶b小，d出栈，b入栈 --- ab
// c -- 字典序比栈顶b大 --- abc
// d -- 字典序比栈顶b大 --- abcd
// a -- 已经包含了 --- abcd
// b -- 已经包含了 --- abcd
// d -- 字典序比栈顶b小，abcd
