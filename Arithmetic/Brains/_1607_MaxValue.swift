//
//  _1607_MaxValue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/19.
//

import Foundation

// https://leetcode.cn/problems/maximum-lcci/

struct _1607_MaxValue {
    func maximum(_ a: Int, _ b: Int) -> Int {
        return a - b >= 0 ? a : b
    }
    
    
    func maximum2(_ a: Int, _ b: Int) -> Int {
        return ((a + b) + abs(a - b)) / 2
    }
    
    
}
