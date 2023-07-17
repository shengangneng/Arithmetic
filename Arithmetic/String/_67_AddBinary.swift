//
//  _67_AddBinary.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://leetcode.cn/problems/add-binary/

struct _67_AddBinary {
    
    func addBinary(_ a: String, _ b: String) -> String {
        let a = Array(a.reversed()), b = Array(b.reversed())
        var s = "", ci = 0
        for i in 0..<max(a.count, b.count) {
            let va = (i<a.count) ? Int(String(a[i]))! : 0,
                vb = (i<b.count) ? Int(String(b[i]))! : 0,
                sum = va+vb+ci
            s += String(sum&1)
            ci = sum>>1
        }
        s += (ci==0) ? "" : "1"

        return String(s.reversed())
    }




    // func addBinary(_ a: String, _ b: String) -> String {
    //     if a.count == 0 {
    //         return b
    //     }
    //     if b.count == 0 {
    //         return a
    //     }

    //     var delta = 0
    //     if a.count < b.count {
    //         delta = b.count - a.count
    //         var newA = "0".append(a)
    //         for i in 1..<delta {
    //             newA = "0".append(newA)
    //         }
    //         a = newA
    //     } else if a.count > b.count {
    //         delta = a.count - b.count
    //         var newB = "0".append(b)
    //         for i in 1..<delta {
    //             newB = "0".append(newB)
    //         }
    //         b = newB
    //     }

    //     var carry = 0
    //     for (val1, val2) in (a.reversed(), b.reversed()) {
    //         if
    //     }

    // }
}
