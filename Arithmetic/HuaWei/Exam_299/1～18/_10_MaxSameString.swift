//
//  _10_MaxSameString.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation
/*
 查找最长公共后缀，不存在，则返回 @Zero
 ["abc", "bc", "c"]     -- c
 ["abc", "bbc", "bc"]   -- bc
 ["aa", "bb", "cc"]     -- cc
 
 */
class _10_MaxSameString {
    func test(_ arr: [String]) {
        // 找到最短的字符串
        var minStr: String?
        for str in arr {
            if minStr == nil {
                minStr = str
            } else {
                if str.count < minStr!.count {
                    minStr = str
                }
            }
        }
        
        var str = minStr!
        for i in 1..<(str.count + 1) {
            let end = str.endIndex
            let start = str.index(str.endIndex, offsetBy: -i)
            let target = str[start..<end]
            
            for cur in arr {
                if !cur.hasSuffix(String(target)) {
                    if i == 1 {
                        print("@Zero")
                    } else {
                        print(str[start..<str.index(str.endIndex, offsetBy: -(i - 1))])
                    }
                    return
                }
            }
        }
        print(str)
    }
}
