//
//  _58_LengthOfLastWord.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://leetcode.cn/problems/length-of-last-word/

struct _58_LengthOfLastWord {
    
    func lengthOfLastWord(_ s: String) -> Int {
        var count = 0
        for c in s.reversed() {
            if c != " " {
                count += 1
            } else if count > 0 {
                break
            }
        }
        return count
    }
    
//    func lengthOfLastWord(_ s: String) -> Int {
//
//        var index = 0
//        var maxCount = 0
//        var preCount = 0
//        for c in s {
//            if index == s.count - 1 {
//                if c != " " {
//                    preCount += 1
//                }
//                return preCount != 0 ? preCount : maxCount
//            }
//
//            index += 1
//            if c == " " {
//                if preCount != 0 {
//                    maxCount = preCount
//                }
//                preCount = 0
//                continue
//            } else {
//                preCount += 1
//            }
//
//        }
//
//        return maxCount
//    }
}
