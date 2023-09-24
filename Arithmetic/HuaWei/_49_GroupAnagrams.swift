//
//  _49_GroupAnagrams.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

struct _49_GroupAnagrams {
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [[String]]()
        var map = [String: [String]]()
        for i in 0..<strs.count {
            var cur = strs[i]
            let str = String(cur.sorted())
            
            if map[str] == nil {
                map[str] = [cur]
            } else {
                var arr = map[str]
                arr?.append(cur)
                map[str] = arr
            }
        }
        for (_, value) in map {
            res.append(value)
        }
        return res
    }
}
