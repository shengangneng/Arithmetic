//
//  _1816_TruncateSentence.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation

// https://leetcode.cn/problems/truncate-sentence/description/
struct _1816_TruncateSentence {
    
    func truncateSentence(_ s: String, _ k: Int) -> String {
        var res: String = ""
        var white = 0
        for c in s {
            if c == " " {
                white += 1
                if white == k {
                    break
                }
            }
            res.append(c)
        }
        return res
    }
}
