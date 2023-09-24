//
//  _HJ_17_CalLocation.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/exam/oj/ta?tpId=37
struct _HJ_17_CalLocation {
    func printInput(_ input: String) {
        let arr = input.components(separatedBy: ";")
        var x = 0
        var y = 0
        for str in arr {
            if str.count < 2 || str.count > 3 { continue }

            let moveS = str.startIndex
            let moveE = str.index(moveS, offsetBy: 1)
            let move = str[moveS..<moveE]
            // guard let move = String(moveT) else { continue }
            
            let numS = str.index(str.startIndex, offsetBy: 1)
            let numE = str.index(numS, offsetBy: str.count - 1)
            let numT = str[numS..<numE]
            guard let num = Int(String(numT)) else { continue }

            if move == "A" {
                x -= num
            } else if move == "D" {
                x += num
            } else if move == "W" {
                y += num
            } else if move == "S" {
                y -= num
            }
        }
        print("\(x),\(y)")
    }
}
