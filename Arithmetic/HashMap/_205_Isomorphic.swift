//
//  _205_Isomorphic.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/18.
//

import Foundation

// https://leetcode.cn/problems/isomorphic-strings/
struct _205_Isomorphic {
    
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }

        var map1 = [Character : Int]()
        var map2 = [Character : Int]()

        var index = 0
        
        // for (sChar, tChar) in zip(s, t) 可以快速同时遍历两个String
        for i in s.indices {
            if map1[s[i]] == nil && map2[t[i]] == nil {
                map1[s[i]] = index
                map2[t[i]] = index
            } else if map1[s[i]] != nil && map2[t[i]] != nil && map1[s[i]] == map2[t[i]] {
                map1[s[i]]! = index
                map2[t[i]]! = index
            } else {
                return false
            }
            index += 1
        }
        return true
    }
}
