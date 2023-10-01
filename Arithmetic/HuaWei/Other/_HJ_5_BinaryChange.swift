//
//  _HJ_5_BinaryChange.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/8f3df50d2b9043208c5eed283d1d4da6?tpId=37&tqId=21228&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_5_BinaryChange {
    func test(_ input: String) {
        var res = 0
        var pass = 1
        for s in input.reversed() {
            if s == "x" { break }
            switch s {
            case "A":
                res += 10 * pass
            case "B":
                res += 11 * pass
            case "C":
                res += 12 * pass
            case "D":
                res += 13 * pass
            case "E":
                res += 14 * pass
            case "F":
                res += 15 * pass
            default:
                res += (s.wholeNumberValue ?? 0) * pass
            }
            pass *= 16
        }
        print("\(res)")
    }
}
