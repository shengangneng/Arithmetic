//
//  _292_Nim游戏.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/19.
//

import Foundation

// https://leetcode.cn/problems/nim-game/
struct _292_NimGame {
    
    func canWinNim(_ n: Int) -> Bool {
        if n <= 3 {
            return true
        }

        // 如果是4，怎么拿都会输
        // 如果是5、6、7（5拿1，6拿2，7拿3），一定能赢
        // 如果是8，怎么拿，对面都会是5、6、7，所以一定输
        // 如果是9、10、11（9拿1，10拿2，11拿3）让对面变成8，所以一定赢
        return n % 4 != 0
    }
}
