//
//  _90_MaxCommonString.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/4.
//

import Foundation

class _90_MaxCommonString {
    func test(_ target: String, _ source: String) {
        
        let s1 = Array(target)
        let s2 = Array(source)
        
        var res = -1
        for i in 0..<s1.count {
            for j in (0..<(s2.count - i - 1)).reversed() {
                if s1[i] == s2[j] {
                    if i == 0 {
                        res = j
                    }
                    break
                }
            }
        }
        print(res)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        var idx = 1
//        var ans = -1
//        let s1 = Array(target)
//        let s2 = Array(source)
//        var i = s1.count - 1
//        while i > -1 {  // 从后往前比较
//            for j in (0...s2.count - idx).reversed() {
//                idx += 1
//                if s1[i] == s2[j] {
//                    if i == 0 {
//                        ans = j
//                    }
//                    break
//                }
//            }
//            i -= 1
//        }
//        print(ans)
    }
}
