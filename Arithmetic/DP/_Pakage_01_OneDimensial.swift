//
//  _Pakage_01_OneDimensial.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

struct _Pakage_01_OneDimensial {
    
    // 其实我们每一行，都是只跟上一行有关系，跟上上行已经没有关联了。
    // 所以有很多空间上的浪费
    // 就是我们遍历到下一行的时候，dp数组里面其实是保存着上一层的数据了
    // 为什么要逆序呢。如果正序列，数据已经被污染了。
    
    func testWeightBagProblem(_ weight: [Int],_ value: [Int],_ size: Int) -> Int {
        var dp = Array(repeating: 0, count: size + 1)
        for i in 0..<weight.count { // 遍历物品
            for j in (weight[i]...size).reversed() {    // 逆序遍历背包容量
                dp[j] = max(dp[j], dp[j - weight[i]] + value[i])
            }
        }
        return dp[size]
    }
}
