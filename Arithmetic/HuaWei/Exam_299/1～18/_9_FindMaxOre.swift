//
//  _9_FindMaxOre.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

/*
 0空 1银 2金
 上下左右相连，则认为是一堆，找出最大价值的堆。输出价值
 
 22220
 00000
 00000
 01111  价值最大是8
 
 22220
 00020
 00010
 01111  价值最大是15
 
 22022
 00200
 00010
 01111  价值最大是5
 
 let res = _9_FindMaxOre().test(["22220","00000","00000","01111"])
 let res1 = _9_FindMaxOre().test(["22220","00020","00010","01111"])
 let res2 = _9_FindMaxOre().test(["22022","00200","00010","01111"])
 
 【65分钟】
 
 */

class _9_FindMaxOre {
    // m = 4, n = 5     4行5列
    func test(_ input: [String]) {
        let m = input.count
        let n = input[0].count
        var dp = Array(repeating: Array(repeating: 0, count: n), count: m)
        
        for i in 0..<m {
            let str = input[i]
            let strs = Array(str).compactMap { Int(String($0)) }
            for j in 0..<n {
                dp[i][j] = strs[j]
            }
        }
        
        var setarr = [Set<[Int]>]()
        for i in 0..<m {
            for j in 0..<n {
                if dp[i][j] != 0 {
                    var set = Set<[Int]>()
                    set.insert([i, j])
                    // 上
                    if i - 1 >= 0 {
                        if dp[i - 1][j] != 0 {
                            set.insert([i - 1, j])
                        }
                    }
                    // 左
                    if j - 1 >= 0 {
                        if dp[i][j - 1] != 0 {
                            set.insert([i, j - 1])
                        }
                    }
                    // 下
                    if i + 1 < m {
                        if dp[i + 1][j] != 0 {
                            set.insert([i + 1, j])
                        }
                    }
                    // 右
                    if j + 1 < n {
                        if dp[i][j + 1] != 0 {
                            set.insert([i, j + 1])
                        }
                    }
                    if setarr.count == 0 {
                        setarr.append(set)
                    } else {
                        var find = false
                        for index in 0..<setarr.count {
                            if !setarr[index].isDisjoint(with: set) {
                                // 发现相同元素
                                setarr[index].formUnion(set)
                                find = true
                            }
                        }
                        if !find {
                            setarr.append(set)
                        }
                    }
                }
            }
        }
        setarr = setarr.filter { $0.count != 0 }
        let resset = Set(setarr)
        
        var maxVal = 0
        for se in resset {
            var count = 0
            for ar in se {
                count += dp[ar[0]][ar[1]]
            }
            maxVal = max(maxVal, count)
        }
        print(maxVal)
    }
}
