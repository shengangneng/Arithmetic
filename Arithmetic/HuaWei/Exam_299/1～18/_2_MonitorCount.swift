//
//  _2_MonitorCount.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 需要打开多少监视器
// 3 4 ["0 0 0 0", "0 1 0 0", "0 0 0 0"]
// 【花费35分钟】
class _2_MonitorCount {
    func test(_ m: Int, _ n: Int, _ input: [String]) -> Int {
        var dp = Array(repeating: Array(repeating: "0", count: n), count: m)
        
        var onearr = [[Int]]()
        for i in 0..<m {
            let str = input[i]
            let arr = str.split(separator: " ")
            for j in 0..<arr.count {
                let val = String(arr[j])
                dp[i][j] = val
                if val == "1" {
                    onearr.append([i, j])
                }
            }
        }
        
        var addset = Set<[Int]>()
        /*
         
             0 1 1 0
             0 1 0 0
             0 0 0 0 8
         
         */
        for arr in onearr {
            let i = arr[0]  // 0~m
            let j = arr[1]  // 0~n
            // 上
            if j - 1 >= 0 {
                if dp[i][j - 1] == "0" {
                    addset.insert([i, j - 1])
                }
            }
            // 左
            if i - 1 >= 0 {
                if dp[i - 1][j] == "0" {
                    addset.insert([i - 1, j])
                }
            }
            // 下
            if j + 1 < n {
                if dp[i][j + 1] == "0" {
                    addset.insert([i, j + 1])
                }
            }
            // 右
            if i + 1 < m {
                if dp[i + 1][j] == "0" {
                    addset.insert([i + 1, j])
                }
            }
        }
        return addset.count + onearr.count
    }
}
