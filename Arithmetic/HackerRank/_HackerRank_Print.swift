//
//  _HackerRank_打印#.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://www.hackerrank.com/challenges/staircase/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen

/*
 
 #
##
###
####
 
 */
struct _HackerRank_Print {
    func staircase(n: Int) -> Void {
        if n <= 0 {
            return
        }
        var space = ""
        for i in 0..<n {
            let spaceCount = n - i - 1
            for _ in 0..<spaceCount {
                space.append(" ")
            }
            for _ in 0..<i+1 {
                space.append("#")
            }
            print(space)
            space = ""
        }
    }
}
