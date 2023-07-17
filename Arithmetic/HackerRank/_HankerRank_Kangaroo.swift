//
//  _HankerRank_Kangaroo.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 You have to figure out a way to get both kangaroos at the same location at the same time as part of the show. If it is possible, return YES, otherwise return NO.
 */
// https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
struct _HankerRank_Kangaroo {
    
    func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
        if x1 == x2 {
            if v1 == v2 {
                return "YES"
            } else {
                return "NO"
            }
        }
        if (x1 > x2 && v1 >= v2) || (x1 < x2 && v1 <= v2) {
            return "NO"
        }
        var xMax: Bool = (x1 > x2)
        for i in 1... {
            let xV1 = x1 + v1 * i
            let xV2 = x2 + v2 * i
            if xV1 == xV2 {
                return "YES"
            }
            if (xMax && xV2 > xV1) || (!xMax && xV2 < xV1) {
                return "NO"
            }
        }
        return "NO"
    }
}
