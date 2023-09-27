//
//  _LCR_182_DynamicPassword.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// https://leetcode.cn/problems/zuo-xuan-zhuan-zi-fu-chuan-lcof/
class _LCR_182_DynamicPassword {
    func dynamicPassword(_ password: String, _ target: Int) -> String {
        var res = ""
        let chars = Array(password)
        for i in target..<chars.count {
            res.append(String(chars[i]))
        }
        for i in 0..<target {
            res.append(String(chars[i]))
        }
        return res
    }
}
