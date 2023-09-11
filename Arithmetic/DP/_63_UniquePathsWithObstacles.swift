//
//  _63_UniquePathsWithObstacles.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

// https://leetcode.cn/problems/unique-paths-ii/
struct _63_UniquePathsWithObstacles {
    
    // 有障碍的话，其实就是标记对应的dp table（dp数组）保持初始值(0)就可以了。
    func uniquePathsWithObstacles(_ obstacleGrid: [[Int]]) -> Int {
        let m = obstacleGrid.count
        let n = obstacleGrid[0].count
        if obstacleGrid[0][0] == 1 || obstacleGrid[m - 1][n - 1] == 1 { return 0 }
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        for i in 0..<m {
            if obstacleGrid[i][0] == 1 { break }
            dp[i][0] = 1
        }
        for i in 0..<n {
            if obstacleGrid[0][i] == 1 { break }
            dp[0][i] = 1
        }
        for i in 1..<m {
            for j in 1..<n {
                if obstacleGrid[i][j] == 0 { continue }
                dp[i][j] = dp[i - 1][j] + dp[i][j - 1]
            }
        }
        return dp[m - 1][n - 1]
    }
}
