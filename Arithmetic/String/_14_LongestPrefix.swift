//
//  _14_LongestPrefix.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://leetcode.cn/problems/longest-common-prefix/

struct _14_LongestPrefix {
    
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 1 {
            return strs[0]
        }
        let count = strs.count
        var preMaxString = ""
        var preString = ""
        
        for i in 1... {
            for j in 0..<strs.count {
                let str = strs[j]
                if i > str.count {
                    return preMaxString
                }
                if 0 == j {
                    preString = (str as NSString).substring(to: i)
                } else {
                    if str.hasPrefix(preString) {
                        if (j == strs.count - 1) {
                            // 已经是最后一位了，那么记录下这个最长的字符串
                            preMaxString = preString
                        } else {
                            continue
                        }
                    } else {
                        return preMaxString
                    }
                }
            }
        }
        return preMaxString
    }
}
