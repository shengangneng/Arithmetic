//
//  _HackerRank_GetMoneySpent.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 b = 10
 keyboard = 3 1
 usb drive = 5 2 8
 
 答案是选择1 和 8 = 9
 如果没有答案，返回-1
 */
// https://www.hackerrank.com/challenges/electronics-shop/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_GetMoneySpent {
    
    func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
        var maxValue = -1
        for key in keyboards {
            
            for usb in drives {
                if key + usb <= b {
                    maxValue = max(maxValue, key + usb)
                }
            }
        }
        return maxValue
    }
}
