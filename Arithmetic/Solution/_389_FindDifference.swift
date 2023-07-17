//
//  _389_FindDifference.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/find-the-difference/
struct _389_FindDifference {
    func findTheDifference(_ s: String, _ t: String) -> Character {

        var map = [Character : Int]()

        for c in s {
            map[c] = map[c] == nil ? 1 : map[c]! + 1
        }
        
        for c in t {
            if map[c] == nil {
                return c
            }
            if map[c]! <= 0 {
                return c
            }
            map[c] = map[c]! - 1
        }

        for (c, value) in map {
            if value >= 1 {
                return c
            }
        }
        return "a"
    }
}
