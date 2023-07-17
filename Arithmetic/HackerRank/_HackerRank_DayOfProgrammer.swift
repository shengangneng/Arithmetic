//
//  _HackerRank_DayOfProgrammer.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 2100   13.09.2100
 
 */

// https://www.hackerrank.com/challenges/day-of-the-programmer/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_DayOfProgrammer {
    
    func dayOfProgrammer(year: Int) -> String {
        if year == 1918 {
            return "26.09.1918"
        }
        var isRun = false
        if year < 1918 {
            isRun = (year % 4 == 0 || year % 400 == 0)
        } else {
            isRun = ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
        }

        if isRun {
            return "12.09.\(year)"
        } else {
            return "13.09.\(year)"
        }
    }
}
