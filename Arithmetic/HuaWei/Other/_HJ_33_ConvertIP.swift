//
//  _HJ_33_ConvertIP.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/66ca0e28f90c42a196afd78cc9c496ea?tpId=37&tqId=21256&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_33_ConvertIP {
    func test(_ line: String, _ line2: String) {
        let array: [String] = (line as String).components(separatedBy: ".")
        var res: String = ""
        for str in array {
            let numStr = toBinary(with: 8, str)
            res.append(numStr)
        }
        var pass = 1
        var value = 0
        for s in res.reversed() {
            value += Int(String(s))! * pass
            pass *= 2
        }
        print("\(value)")

        let numStr = toBinary(with: 32, line2)
        var res2 = ""
        var offset = 0
        for i in 0..<4 {
            let start = numStr.index(numStr.startIndex, offsetBy: offset)
            let end = numStr.index(start, offsetBy: 8)
            let cur = numStr[start..<end]
            offset += 8

            var temp = 0
            var pass = 128
            for s in cur {
                if s == "1" {
                    temp += pass
                }
                pass /= 2
            }
            if i != 3 {
                res2.append("\(temp).")
            } else {
                res2.append("\(temp)")
            }
        }
        print(res2)
    }
    
    
    // 数字转指定长度的二进制
    private func toBinary(with len: Int, _ str: String) -> String {
        // 128 64 32 16 8 4 2 1
        guard var num = Double(str) else { return "" }
        var start = pow(Double(2), Double(len - 1))
        var res = ""
        for _ in 0..<len {
            if num >= start {
                res.append("1")
                num -= start
            } else {
                res.append("0")
            }
            start /= 2
        }
        return res
    }
    
}
