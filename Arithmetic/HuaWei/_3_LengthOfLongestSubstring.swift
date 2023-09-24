//
//  _3_LengthOfLongestSubstring.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode.cn/problems/longest-substring-without-repeating-characters/
struct _3_LengthOfLongestSubstring {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.count == 0 { return 0 }
        var maxCount = Int.min
        let chars: [Character] = Array(s)
        for i in 0..<chars.count {
            let cur = chars[i]
            var map = [Character:Int]()
            map[cur] = 1
            var count = 1
            for j in (i + 1)..<chars.count {
                let val = chars[j]
                if map[val] == nil {
                    map[val] = 1
                    count += 1
                } else {
                    break
                }
            }
            maxCount = max(maxCount, count)
        }
        return maxCount
    }
}
