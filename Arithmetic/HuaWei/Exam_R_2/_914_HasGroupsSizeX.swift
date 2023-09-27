//
//  _914_HasGroupsSizeX.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

// https://leetcode.cn/problems/x-of-a-kind-in-a-deck-of-cards/
struct _914_HasGroupsSizeX {
    func hasGroupsSizeX(_ deck: [Int]) -> Bool {
        if deck.count < 2 { return false }
        // 得到map，记录每张牌的数量，然后记录最小数量的牌
        var map = [Int:Int]()
        for d in deck {
            if map[d] == nil {
                map[d] = 1
            } else {
                map[d]! += 1
            }
        }
        // 需要求最大公约数
        var minCount = Int.max
        for (_, value) in map {
            minCount = min(minCount, value)
        }
        if minCount < 2 { return false }
        
        var minJ = Int.max
        for j in 2...minCount {
            if j < 2 { continue }
            var find = true
            for (_, count) in map {
                if count % j != 0 {
                    find = false
                }
            }
            if find {
                minJ = min(minJ, j)
            }
        }
        
        return minJ != Int.max
    }
}
