//
//  _33_StringConvertToSimple.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

/*
 【29分钟】
 */
class _33_StringConvertToSimple {
    func test(_ input: String) {
        let chars = Array(input)
        var rest = ""
        var start = -1
        var str = ""
        for i in 0..<chars.count {
            let c = chars[i]
            if c == "(" {
                start = i
            } else if c == ")" {
                let si = input.index(input.startIndex, offsetBy: start + 1)
                let ei = input.index(si, offsetBy: i - start - 1)
                let sub = input[si..<ei]
                str.append(String(sub))
                start = -1
            } else if start == -1 {
                rest.append(c)
            } else {
                continue
            }
        }
        let set = Set(str)
        if set.count == 0 {
            print(rest)
            return
        }
        let first = Array(Set(str)).sorted().first!
        for key in set {
            rest = rest.replacingOccurrences(of: String(key), with: String(first))
        }
        print(rest)
    }
}
