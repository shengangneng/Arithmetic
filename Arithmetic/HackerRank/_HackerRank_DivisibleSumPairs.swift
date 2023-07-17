//
//  _HackerRank_DivisibleSumPairs.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 k = 3
 arr = [1, 3, 2, 6, 1, 2]
 
 前后两个index，必须满足arr[i] + arr[j]是k的整数倍
 
 */
struct _HackerRank_DivisibleSumPairs {
    
    func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
        
        var count = 0
        for i in 0..<n-1 {
            let left = ar[i]
            for j in (i+1)..<n {
                let right = ar[j]
                if (left + right) % k == 0 {
                   count += 1
                }
            }
        }
        return count
    }
    
}
