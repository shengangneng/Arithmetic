//
//  _HackerRank_MigratoryBirds.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 
 给定一个数组：
 
 找出出现最多的数字中，值最小的
 1 4 4 4 5 3 ---》4
 1 1 2 2 5 3 ---》1
 
 */

// https://www.hackerrank.com/challenges/migratory-birds/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_MigratoryBirds {
    
    func migratoryBirds(arr: [Int]) -> Int {
        var map = [Int : Int]()
        
        var maxCount = 0
        for ar in arr {
            map[ar] = map[ar] == nil ? 1 : map[ar]! + 1
            maxCount = max(maxCount, map[ar]!)
        }
        var minKey = Int.max
        for (k, v) in map {
            if v == maxCount {
                minKey = min(minKey, k)
            }
        }
        return minKey
    }
}
