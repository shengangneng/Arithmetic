//
//  _151_ReverseWords.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

// https://leetcode.cn/problems/reverse-words-in-a-string/
struct _151_ReverseWords {
    
    func reverseWords(_ s: String) -> String {
        // 移除前后空格
        var strs = s.trimmingCharacters(in: .whitespaces)
        // 计算出真实长度
        var pre: Character?
        var count = 0
        for str in strs {
            count += 1
            if pre == nil {
                pre = str
                continue
            }
            if pre == " " && str == " " {
                count -= 1
            }
            pre = str
        }
        
        // 开始操作
        var res: String = ""
//        pre = nil
//        var lastIndex = strs.count
//        var curIndex = strs.count
//        // 逆序开始处理
//        for str in strs.reversed() {
//            if pre == nil {
//                // 逆序第一个字母
//                pre = str
//                if str == " " {
//                    lastIndex -= 1
//                }
//            } else {
//                // 1、pre == " " str == " "
//                // 2、pre != " " str == " "
//                // 3、pre == " " str != " "
//                // 4、pre != " " str != " "
//                if pre == " " && str == " " {
//                    lastIndex = curIndex
//                } else if pre != " " && str == " " {
//                    // 说明一个单词结束，开始记录进入res
//                    res.append(strs[curIndex..<lastIndex])
//                }
//            }
//            pre = str
//            curIndex -= 1
//            if res.count >= count {
//                return res
//            }
//        }

        return res
    }
}
