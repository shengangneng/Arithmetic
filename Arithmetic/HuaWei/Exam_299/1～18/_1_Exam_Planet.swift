//
//  _1_Exam_Planet.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 宜居区  YES
// 可改造区 NO
// 死亡区  NA（无法穿过）
// 【花了34分钟】
class _1_Exam_Planet {
    // ["YES YES NO", "NO NO NO", "NA NO YES"] 结果2
    // ["YES YES NO", "NA NO NO", "NO NA YES"] 结果-1
    func test(_ input: [String]) -> Int {
        let n = input.count
        var dp = Array(repeating: Array(repeating: "", count: n), count: n)
        
        var yesarr = [[Int]]()
        var nocount = 0
        for i in 0..<input.count {
            let str = input[i]
            // "YES YES NO"
            let arr = str.split(separator: " ")
            for j in 0..<arr.count {
                let val = String(arr[j])
                dp[i][j] = val
                if val == "YES" {
                    yesarr.append([i, j])
                } else if val == "NO" {
                    nocount += 1
                }
            }
        }
        
        var res = 0 // 改造次数
        while true {
            res += 1
            var addset = Set<[Int]>()
            for arr in yesarr {
                let i = arr[0]
                let j = arr[1]
                // 上
                if j - 1 >= 0 {
                    if dp[i][j - 1] == "NO" {
                        addset.insert([i, j - 1])
                    }
                }
                
                // 左
                if i - 1 >= 0 {
                    if dp[i - 1][j] == "NO" {
                        addset.insert([i - 1, j])
                    }
                }
                
                // 下
                if j + 1 < n {
                    if dp[i][j + 1] == "NO" {
                        addset.insert([i, j + 1])
                    }
                }
                
                // 右
                if i + 1 < n {
                    if dp[i + 1][j] == "NO" {
                        addset.insert([i + 1, j])
                    }
                }
            }
            yesarr.append(contentsOf: addset)
            if addset.count != 0 {
                nocount -= addset.count
            } else {
                return nocount == 0 ? res : -1
            }
            // 增加的渲染上去
            for item in addset {
                dp[item[0]][item[1]] = "YES"
            }
        }
    }
}
