//
//  _Zuo_877_StoneGame.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/6.
//

import Foundation

// https://leetcode.cn/problems/stone-game/description/?utm_source=LCUS&utm_medium=ip_redirect&utm_campaign=transfer2china
struct _Zuo_877_StoneGame {
    
    // 但是超时了
    func stoneGame(_ piles: [Int]) -> Bool {
        return first(piles, 0, piles.count - 1) > second(piles, 0, piles.count - 1)
    }
    private func first(_ piles: [Int],_ l: Int,_ r: Int) -> Int {
        if l == r {
            return piles[l]
        }
        return max((piles[l] + second(piles, l + 1, r)), (piles[r] + second(piles, l, r - 1)))
    }
    private func second(_ piles: [Int],_ l: Int,_ r: Int) -> Int {
        if l == r {
            return 0
        }
        return min(first(piles, l + 1, r), first(piles, l, r - 1))
    }
}
