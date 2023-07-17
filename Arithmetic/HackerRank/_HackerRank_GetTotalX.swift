//
//  _HackerRank_GetTotalX.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

// https://www.hackerrank.com/challenges/between-two-sets/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
/*
 
 2 2
 3 4
 24 48
            2
 
 10 10
 100 99 98 97 96 95 94 93 92 91
 1 2 3 4 5 6 7 8 9 10
                            0
 
 3 2
 3 9 6
 36 72
            2
 
 1 1
 51
 50
            0
 
 3 2
 2 3 6
 42 84
            2
 
 */


/*
 6 9        18
 36
 */
struct _HackerRank_GetTotalX {
    
    func getTotalX(a: [Int], b: [Int]) -> Int {
        
        let aCount = a.count
        
        var sortA = a
        var sortB = b
        sort(arr: &sortA)
        sort(arr: &sortB)
        
        let start = sortA[aCount - 1]
        let end = sortB[0]
        if end < start {
            return 0
        }
        
        var add = [Int]()
        for i in start...end {
            var canAdd = true
            for val in sortA {
                if !(i % val == 0) {
                    canAdd = false
                    continue
                }
            }
            if canAdd {
                add.append(i)
            }
        }
        var resultArr = [Int]()
        for ad in add {
            var canAdd = true
            for val in sortB {
                if val % ad != 0 {
                    canAdd = false
                    break
                }
            }
            if canAdd {
                resultArr.append(ad)
            }
        }
        
        return resultArr.count
    }
    
    func sort(arr: inout [Int]) {
        var count = arr.count
        var steps = [Int]()
        for _ in 0..<count {
            if count / 2 > 0 {
                count = count / 2
                steps.append(count)
            }
        }
        for step in steps {
            sortAt(step: step, arr: &arr)
        }
    }
    
    private func sortAt(step: Int, arr: inout [Int]) {
        let count = arr.count
        for i in 0..<step {
            for j in stride(from: i+step, through: count - 1, by: step) {
                var cur = j
                while (cur > i && arr[cur] < arr[cur - step]) {
                    arr.swapAt(cur, cur - step)
                    cur -= step
                }
            }
        }
    }
}
