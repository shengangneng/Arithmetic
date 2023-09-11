//
//  _509_Bib.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/6.
//

import Foundation

// https://leetcode.cn/problems/fibonacci-number/description/
// 其他类似的中等难度斐波那契数题目：
// 842（https://leetcode.cn/problems/split-array-into-fibonacci-sequence/description/）
// 873（https://leetcode.cn/problems/length-of-longest-fibonacci-subsequence/）
struct _509_Bib {
    
    // DP - 4
    func fib(_ n: Int) -> Int {
        if n <= 1 { return n }
        var dp = Array(repeating:0, count:2)
        dp[1] = 1
        for _ in 2...n {
            let sum = dp[1] + dp[0]
            dp[0] = dp[1]
            dp[1] = sum
        }
        return dp[1]
    }


    // 累加 - 3
    // func fib(_ n: Int) -> Int {
    //     if n <= 1 { return n }
    //     var res = 0
    //     var pre = 1
    //     var prepre = 0
    //     for _ in 2...n {
    //         res = pre + prepre
    //         prepre = pre
    //         pre = res
    //     }
    //     return res
    // }


    // 递归 - 使用HashMap - 2
    // private var map = [Int : Int]()
    // func fib(_ n: Int) -> Int {
    //     if n <= 1 { return n }
    //     if map[n] != nil { return map[n]! }
    //     map[n] = fib(n - 1) + fib(n - 2)
    //     return map[n]!
    // }


    // 递归 - 1
    // func fib(_ n: Int) -> Int {
    //     if n == 0 { return 0 }
    //     if n <= 2 { return 1 }
    //     return fib(n - 1) + fib(n - 2)
    // }
}
