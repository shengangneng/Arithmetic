//
//  _899_OrderlyQueue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode.cn/problems/orderly-queue/
struct _899_OrderlyQueue {
    func orderlyQueue(_ s: String, _ k: Int) -> String {
        if k > 1 { return String(s.sorted()) }
        
        var res = s
        var last = s
        for _ in 0..<res.count {
            last = last[last.index(after: last.startIndex)..<last.endIndex] + String(last.first!)
            res = min(res, last)
        }
        return res
    }
}
