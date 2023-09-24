//
//  _HJ_60_IsSuClosed.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/22.
//

import Foundation

struct _HJ_60_IsSuClosed {
    
    func test(_ input: String) {
        if input == "4" {
            print(2)
            print(2)
        }
        let n: Int! = Int(input)

        var minVal = Int.max
        var res1 = 0
        var res2 = 0
        for i in stride(from: 3, through: n / 2, by: 2) {
            let remain = n - i
            if isSuNum(i) && isSuNum(remain) {
                let delta = abs(i - remain)
                if delta < minVal {
                    minVal = delta
                    res1 = i
                    res2 = remain
                }
            }
        }
        print(res1)
        print(res2)
    }

    private func isSuNum(_ num: Int) -> Bool {
        if num == 3 { return true }
        let end: Int! = Int(sqrt(Double(num)))
        for i in 2...end {
            if num % i == 0 {
                return false
            }
        }
        return true
    }
}
