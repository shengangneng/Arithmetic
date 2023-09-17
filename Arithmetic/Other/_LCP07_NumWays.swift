//
//  _LCP07_NumWays.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation

// https://leetcode.cn/problems/chuan-di-xin-xi/description/
struct _LCP07_NumWays {
    
    func numWays(_ n: Int, _ relation: [[Int]], _ k: Int) -> Int {
        // [[0,2],[2,1],[3,4],[2,3],[1,4],[2,0],[0,4]]
        // [0,2],[0,4]
        // [2,1],[2,3],[2,0]
        // [1,4],[1,4],[0,2],[0,4]

        var k = k
        var find = [[0, 0]]
        while k > 0 && find.count > 0 {
            k -= 1
            var res = [[Int]]()
            for val in find {
                for way in relation {
                    if way[0] == val[1] {
                        res.append(way)
                    }
                }
            }
            find = res
        }
        var count = 0
        for val in find {
            if val[1] == n - 1 {
                count += 1
            }
        }
        return count
    }
}
