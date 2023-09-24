//
//  _Zhou_OneMax.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _Zhou_OneMax {
    func maximumOddBinaryNumber(_ s: String) -> String {
        let chars = Array(s)
        var oneCount = 0
        var zeroCount = 0
        for str in s {
            if str == "1" {
                oneCount += 1
            } else {
                zeroCount += 1
            }
        }
        var res = ""
        for i in 0..<(oneCount + zeroCount) {
            if i < oneCount - 1 {
                res.append("1")
            } else if i < (oneCount + zeroCount - 1) {
                res.append("0")
            } else {
                res.append("1")
            }
        }
        return res
    }
}
