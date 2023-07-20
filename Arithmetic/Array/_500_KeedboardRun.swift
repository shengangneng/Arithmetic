//
//  _500_KeedboardRun.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/keyboard-row/

struct _500_KeedboardRun {
    
    func findWords(_ words: [String]) -> [String] {

        let str1 = "qwertyuiop"
        let str2 = "asdfghjkl"
        let str3 = "zxcvbnm"

        var arr = [String]()
        for word in words {
            let loWord = word.lowercased()
            var part = -1
            var canAdd = true
            for c in loWord {
                if str1.firstIndex(of: c) != nil {
                    if part == -1 {
                        part = 1
                    } else {
                        if part != 1 {
                            canAdd = false
                            break
                        }
                    }
                }
                if str2.firstIndex(of: c) != nil {
                    if part == -1 {
                        part = 2
                    } else {
                        if part != 2 {
                            canAdd = false
                            break
                        }
                    }
                }
                if str3.firstIndex(of: c) != nil {
                    if part == -1 {
                        part = 3
                    } else {
                        if part != 3 {
                            canAdd = false
                            break
                        }
                    }
                }
            }
            if canAdd {
                arr.append(word)
            }
        }
        return arr
    }
}
