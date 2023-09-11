//
//  _70_ClimbStairs.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/6.
//

import Foundation

struct _70_ClimbStairs {
    
    // 递归
//     var map = [Int : Int]()
//     func climbStairs(_ n: Int) -> Int {
//         if n <= 3 { return n }
//         if map[n] != nil { return map[n]! }
//         map[n] = climbStairs(n - 1) + climbStairs(n - 2)
//         return map[n]!
//     }


    // 迭代
    // func climbStairs(_ n: Int) -> Int {
    //     if n <= 3 { return n }
    //     var res = 0
    //     var pre = 2
    //     var prepre = 1
    //     for _ in 3...n {
    //         res = pre + prepre
    //         prepre = pre
    //         pre = res
    //     }
    //     return res
    // }
}
