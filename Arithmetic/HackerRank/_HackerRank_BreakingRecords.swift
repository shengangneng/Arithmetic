//
//  _HackerRank_BreakingRecords.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://www.hackerrank.com/challenges/breaking-best-and-worst-records/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
/*
 
    Game  Score  Minimum  Maximum   Min Max
      0      12     12       12       0   0
      1      24     12       24       0   1
      2      10     10       24       1   1
      3      24     10       24       1   1
 
 */
struct _HackerRank_BreakingRecords {
    
    func breakingRecords(scores: [Int]) -> [Int] {
        var maxValue = scores[0]
        var minValue = scores[0]
        
        var maxCount = 0
        var minCount = 0
        for i in 1..<scores.count {
            let score = scores[i]
            if score > maxValue {
                maxCount += 1
                maxValue = score
            } else if score < minValue {
                minCount += 1
                minValue = score
            }
        }
        return [maxCount, minCount]
    }
}
