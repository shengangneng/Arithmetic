//
//  _NC_37_Merge.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://www.nowcoder.com/practice/69f4e5b7ad284a478777cb2a17fb5e6a?tpId=196&tqId=37071&rp=1&ru=/exam/company&qru=/exam/company&sourceUrl=%2Fexam%2Fcompany&difficulty=undefined&judgeStatus=undefined&tags=&title=


struct _NC_37_Merge {
    
    public class Interval {
        public var start: Int
        public var end: Int
        public init(_ start: Int = 0, _ end: Int = 0) {
            self.start = start
            self.end = end
        }
    }
    
    func merge ( _ intervals: [Interval]) -> [Interval] {
        if intervals.count < 2 { return intervals }

        var sortInter = intervals.sorted { v1, v2 in
            return v1.start < v2.start
        }
        var preInter: Interval = sortInter.first!
        var res = [preInter]
        for i in 1..<sortInter.count {
            let inter = sortInter[i]
            if inter.start <= preInter.end {
                preInter.end = max(inter.end, preInter.end)
                continue
            }
            res.append(inter)
            preInter = inter
        }

        return res
    }
}
