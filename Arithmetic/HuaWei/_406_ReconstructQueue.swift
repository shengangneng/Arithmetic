//
//  _406_ReconstructQueue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

// https://leetcode.cn/problems/queue-reconstruction-by-height/solutions/486493/xian-pai-xu-zai-cha-dui-dong-hua-yan-shi-suan-fa-g/
struct _406_ReconstructQueue {
    // [[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]]
    func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
        let people = people.sorted { v1, v2 in
            if v1[0] == v2[0] {
                return v1[1] < v2[1]
            } else {
                return v1[0] > v2[0]
            }
        }
        var res = [[Int]]()
        for p in people {
            if res.count <= p[1] {
                res.append(p)
            } else {
                res.insert(p, at: p[1])
            }
        }
        return res
    }
}
