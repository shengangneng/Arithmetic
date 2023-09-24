//
//  _30_FindSubstring.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode.cn/problems/substring-with-concatenation-of-all-words/
struct _30_FindSubstring {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        var length = words.first!.count     // 每个单词的长度
        var count = words.count             // 单词的个数
        let resLength = length * count
        if s.count < resLength { return [] }
        
        let wordMap = arrayToMap(words)
        var words = words
        var res = [Int]()
        if wordMap.count == 1 {
            let first = words.first!
            let str = String(repeating: first, count: count)
            let tempStr = s.replacingOccurrences(of: first, with: "")
            let firstMap = arrayToMap(Array(first))
            words = [str]
            length = str.count
            count = 1
            
            if tempStr.count == 0 {
                let delta = s.count - resLength
                for i in stride(from: 0, through: delta, by: firstMap.count == 1 ? 1 : first.count) {
                    res.append(i)
                }
                return res
            }
        }
        let delta = s.count - resLength
        for i in 0...delta {
            let startIndex = s.index(s.startIndex, offsetBy: i)
            let endIndex = s.index(startIndex, offsetBy: resLength)
            let cur = s[startIndex..<endIndex]
            
            var temp = words
            for j in 0..<count {
                let sIndex = cur.index(cur.startIndex, offsetBy: j * length)
                let eIndex = cur.index(sIndex, offsetBy: length)
                let word = cur[sIndex..<eIndex]
                var removeIndex = -1
                for k in 0..<temp.count {
                    if word == temp[k] {
                        removeIndex = k
                    }
                }
                if removeIndex == -1 {
                    break   // 但凡有一个不匹配，就退到i循环
                } else {
                    temp.remove(at: removeIndex)
                }
            }
            if temp.count == 0 {
                res.append(i)
            }
        }
        return res
    }
    
    private func arrayToMap<T>(_ arr: [T]) -> [T: Int] {
        var map = [T:Int]()
        for num in arr {
            if map[num] == nil {
                map[num] = 1
            } else {
                map[num]! += 1
            }
        }
        return map
    }
}
