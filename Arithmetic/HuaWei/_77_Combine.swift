//
//  _77_Combine.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// 类似的题还有39、46
// https://leetcode.cn/problems/combinations/
struct _77_Combine {
    
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        var res = [[Int]]()
        var temp = [Int]()
        var array = [Int]()
        for i in 1...n { array.append(i) }
        dfs(&array, &temp, &res, k, 0)
        return res
    }

    func dfs(_ array: inout [Int], _ temp: inout [Int],
    _ res: inout [[Int]], _ k: Int, _ n: Int) {
        if temp.count == k {
            res.append(temp)
            return
        }
        for i in n..<array.count {
            let key = array[i]
            if key != 0 {
                temp.append(key)
                array[i] = 0
                dfs(&array, &temp, &res, k, i)
                temp.removeLast()
                array[i] = key
            }
        }
    }
    
    
    
//    func combine(_ n: Int, _ k: Int) -> [[Int]] {
//        backtrack(n, start: 1, k: k, track: [])
//        return res
//    }
//    private var res = [[Int]]()
//    private func backtrack(_ n: Int, start: Int, k: Int, track: [Int]) {
//        if track.count == k {
//            res.append(track)
//            return
//        }
//
//        var track = track
//        for i in start..<(n + 1) {
//            track.append(i)
//            backtrack(n, start: i + 1, k: k, track: track)
//            track.removeLast()
//        }
//    }
    
}
