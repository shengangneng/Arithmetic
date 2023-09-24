//
//  _NC_68_JumpFloor.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/8c82a5b80378478f9484d87d1c5f12a4?tpId=196&tqId=37098&rp=1&ru=/exam/company&qru=/exam/company&sourceUrl=%2Fexam%2Fcompany&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _NC_68_JumpFloor {
    
    func jumpFloor ( _ number: Int) -> Int {
        var map = [Int:Int]()
        return process(number, &map)
    }
    func process(_ n: Int, _ map: inout [Int:Int]) -> Int {
        if n <= 2 { return n }
        if map[n] != nil { return map[n]! }
        let one = process(n - 1, &map)
        let two = process(n - 2, &map)
        map[n] = one + two
        return one + two
    }
}
