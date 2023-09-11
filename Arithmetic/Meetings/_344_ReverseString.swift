//
//  _344_ReverseString.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

struct _344_ReverseString {
    func reverseString(_ s: inout [Character]) {
        guard s.count >= 1 else { return }
        var l = 0
        var r = s.count - 1
        while r >= l {
            let tmp = s[l]
            s[l] = s[r]
            s[r] = tmp
            l += 1
            r -= 1
        }
    }
}
