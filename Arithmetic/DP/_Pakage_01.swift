//
//  _Pakage_01.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

struct _Pakage_01 {
//    let weight = [1,3,4]
//    let value = [15,20,30]
//    let size = 4
    func testWeightBagProblem(_ weight: [Int],_ value: [Int],_ size: Int) -> Int {
        
        // 行是size，把0重量也放进去
//        var dp = Array(repeating: Array(repeating: 0, count: size + 1), count: weight.count)
        var dp = Array(repeating:Array(repeating: 0, count: 3), count:4)
        
        for j in weight[0]...size {
            dp[0][j] = value[0]
        }
        
        // weight（1到2）
        for i in 1..<weight.count {
            for j in 1...size {
                if j < weight[i] {
                    dp[i][j] = dp[i - 1][j]
                } else {
                    dp[i][j] = max(dp[i - 1][j], dp[i - 1][j - weight[i]] + value[i])
                }
            }
        }
        
        return dp[weight.count - 1][size]
    }
}
