//
//  _62_UniquePaths.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/unique-paths/
// 相当于求二叉树 - 叶子结点的个数
struct _62_UniquePaths {
    // 方式1 - 这种方式，复杂度是2^(m+n+1)次方
//    func uniquePaths(_ m: Int, _ n: Int) -> Int {
//        return process(1, 1, m, n)
//    }
//
//    func process(_ i: Int, _ j: Int, _ m: Int, _ n: Int) -> Int {
//        if i > m || j > n { return 0 }
//        if i == m && j == n { return 1 }
//        return process(i + 1, j , m, n) + process(i, j + 1, m, n)
//    }
    
    // 方式2 - 加上map保存值
//    func uniquePaths(_ m: Int, _ n: Int) -> Int {
//        var map = [String:Int]()
//        return process(1, 1, m, n, &map)
//    }
//
//    func process(_ i: Int, _ j: Int, _ m: Int, _ n: Int, _ map: inout [String:Int]) -> Int {
//        if i > m || j > n { return 0 }
//        if i == m && j == n { return 1 }
//        var first: Int
//        var second: Int
//        if map["\(i + 1)-\(j)"] != nil {
//            first = map["\(i + 1)-\(j)"]!
//        } else { first = process(i + 1, j , m, n, &map) }
//        if map["\(i)-\(j+1)"] != nil {
//            second = map["\(i)-\(j+1)"]!
//        } else { second = process(i, j + 1, m, n, &map) }
//        return first + second
//    }
    
    // 方式3
    func uniquePaths(_ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            dp[i][0] = 1
        }
        for i in 0..<n {
            dp[0][i] = 1
        }
        for i in 1..<m {
            for j in 1..<n {
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
        return dp[m - 1][n - 1]
    }
}
