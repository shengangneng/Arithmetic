//
//  _2582_PassThePillow.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// https://leetcode.cn/problems/pass-the-pillow/
class _2582_PassThePillow {
    func passThePillow(_ n: Int, _ time: Int) -> Int {
        if n == 1 { return 1 }
        if time < n { return 1 + time }
        let rest = time % (n - 1)
        let pass = (time - rest) / (n - 1)
        return pass & 1 == 0 ? (1 + rest) : (n - rest)
    }
}
