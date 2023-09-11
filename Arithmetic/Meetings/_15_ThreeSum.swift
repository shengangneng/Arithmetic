//
//  _15_ThreeSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

// https://leetcode.cn/problems/3sum/submissions/
struct _15_ThreeSum {
    // 方法1 ：跟两数和差不多的做法，
    func threeSum(_ nums: [Int]) -> [[Int]] {
        if nums.count < 3 { return [] }
        var map = [Int : Int]()
        var res = [[Int]]()
        var target = 0
        for i in 0..<nums.count {
            let num = nums[i]
            map.removeAll()
            target = 0 - num
            for j in (i + 1)..<nums.count {
                let cur = nums[j]
                let remain = target - cur
                if map[remain] != nil {
                    var add = [num, cur, remain]
                    add = add.sorted(by: <)
                    if !res.contains(add) {
                        res.append(add)
                    }
                }
                map[cur] = j
            }
        }
        return res
    }
    
    // 方法2 ：另一个做法：先排序，如果第一个元素已经大于0了，直接退出，不可能有答案
    
}
