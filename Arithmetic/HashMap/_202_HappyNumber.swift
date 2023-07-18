//
//  _202_HappyNumber.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/18.
//

import Foundation

// https://leetcode.cn/problems/happy-number/

struct _202_HappyNumber {
    
    // 用一个Set来保存计算过的结果
    func isHappy(_ n: Int) -> Bool {
        if n == 1 {
            return true
        }
        var start = n
        var set = Set<Int>()
        while (!set.contains(start)) {
            let number = String(start)
            var result = 0
            for s in number {
                if let num = Int(String(s)) {
                    result += num * num
                } else {
                    return false
                }
            }
            if result == 1 {
                return true
            } else {
                set.insert(start)
                start = result
            }
        }
        return false
    }
    
    
    // 自己设定了10的循环次数，这样是有问题的
//    func isHappy(_ n: Int) -> Bool {
//        if n == 1 {
//            return true
//        }
//        var start = n
//        var maxCycle = 10
//        while (maxCycle >= 0) {
//            let number = String(start)
//            var result = 0
//            for s in number {
//                if let num = Int(String(s)) {
//                    result += num * num
//                } else {
//                    return false
//                }
//            }
//            if result == 1 {
//                return true
//            } else {
//                start = result
//            }
//            maxCycle -= 1
//        }
//        return false
//    }
}
