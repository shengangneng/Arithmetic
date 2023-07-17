//
//  _HackerRank_PageCount.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 n是页数
 
 p是想要翻的页数
 
 */

// https://www.hackerrank.com/challenges/drawing-book/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HackerRank_PageCount {
    func pageCount(n: Int, p: Int) -> Int {
        
        var count = (n + 2) / 2
        let minRight = n / 2 + 1
        
        let pIndex = p / 2
        if (count / 2) % 2 == 0 {
            if p < minRight {
                // start from left
                return pIndex
            } else {
                // p > minRight
                // start from right
                return n / 2 - pIndex
            }
        } else {
            if p <= minRight {
                // start from left
                return pIndex
            } else {
                // p > minRight
                // start from right
                return n / 2 - pIndex
            }
        }
        
    }
}
