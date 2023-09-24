//
//  _HJ_23_DeleteMinStr.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/05182d328eb848dda7fdd5e029a56da9?tpId=37&tqId=21246&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_23_DeleteMinStr {
    func test(_ str: String) {
        if str.count == 1 {
            print("")
            return
        }
        var map = [Character:Int]()
        var minCount = Int.max
        for s in str {
            if map[s] == nil {
                map[s] = 1
            } else {
                map[s]! += 1
            }
        }
        for (_, value) in map {
            minCount = min(minCount, value)
        }

        var deleteSet = Set<Character>()
        for (key, value) in map {
            if value == minCount {
                deleteSet.insert(key)
            }
        }
        
        var res = ""
        for s in str {
            if deleteSet.contains(s) { continue }
            res.append(s)
        }
        print("\(res)")
        
        
        var start: Int = Int(pow(2.0, 31.0))
    }
}
