//
//  _HackerRank_CountApplesAndOranges.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 Using the information given below, determine the number of apples and oranges that land on Sam's house.
 
 */
// https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
struct _HackerRank_CountApplesAndOranges {
    
    func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
        var appleCount = 0
        var orangeCount = 0
        
        for apple in apples {
            if a + apple >= s && a + apple <= t {
                appleCount += 1
            }
        }
        print(appleCount)
        
        for orange in oranges {
            if b + orange >= s && b + orange <= t {
                orangeCount += 1
            }
        }
        print(orangeCount)
    }
}
