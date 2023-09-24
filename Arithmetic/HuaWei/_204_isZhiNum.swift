//
//  _204_isZhiNum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _204_isZhiNum {
    func countPrimes(_ n: Int) -> Int {
        if n <= 2 { return 0 }
        if n <= 3 { return 1 }  // 2
        if n <= 5 { return 2 }  // 2, 3
        // 从 > 5开始
        var res = [2, 3]
        for i in stride(from: 5, through: n - 1, by: 2) {
            if isZhiNum(i) { res.append(i) }
        }
        return res.count
    }

    private func isZhiNum(_ num: Int) -> Bool {
        let end: Int! = Int(sqrt(Double(num)))
        for i in 2...end {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
}
