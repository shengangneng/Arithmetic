//
//  _HackerRank_Birthday.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 
 巧克力是连在一起的。
 1 2 1 3 2
 总数=3  长度=2
            答案，有2个这样的结果
 
 */

// https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_Birthday {
    
    func birthday(s: [Int], d: Int, m: Int) -> Int {
        
        let count = s.count
        var resultCount = 0
        for i in 0..<count {
            let end = i + m
            if end > count {
                break
            }
            var result = 0
            for j in i..<i+m {
                result += s[j]
            }
            if result == d {
                resultCount += 1
            }
        }
        return resultCount
    }
}
