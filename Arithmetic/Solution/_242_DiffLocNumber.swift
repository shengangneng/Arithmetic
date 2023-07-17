//
//  _242_DiffLocNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/valid-anagram/
struct _242_DiffLocNumber {
    
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if (s.count != t.count) {
            return false
        }
        
        if (s == t) {
            return true
        }
        
        var map = [Character: Int]()
        for c in s {
            map[c] = map[c] == nil ? 1 : map[c]! + 1
        }
        
        for c in t {
            if map[c] == nil || map[c]! < 1 {
                return false
            }
            map[c] = map[c]! - 1
        }
        
        for (_, value) in map {
            if value > 0 {
                return false
            }
        }
        return true
    }
    
//    func isAnagram(_ s: String, _ t: String) -> Bool {
//        if (s.count != t.count) {
//            return false
//        }
//
//        var map = [Character : Int]()
//
//        for (_, value) in map {
//            if value > 0 {
//                return false
//            }
//        }
//        return true
//
//        var sArr = Array(s)
//        var tArr = Array(t)
//
//        sArr = sArr.sorted()
//        tArr = tArr.sorted()
//
//        return sArr.elementsEqual(tArr)
//    }
}
