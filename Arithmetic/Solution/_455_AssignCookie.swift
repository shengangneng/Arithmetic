//
//  _455_AssignCookie.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/assign-cookies/
struct _455_AssignCookie {
    func findContentChildren(_ g: [Int], _ s: [Int]) -> Int {
        var gg = g
        var ss = s;
        insertSort(&gg)
        insertSort(&ss)
        var sIndex = 0

        var result = 0
        for child in gg {
            for index in sIndex..<ss.count {
                if ss[index] >= child {
                    result += 1
                    sIndex += 1
                    break
                } else {
                    sIndex += 1
                }
            }
        }
        return result
    }

    func insertSort(_ arr: inout [Int]) {
        let count = arr.count
        for i in 0..<count {
            let value = arr[i]
            var cur = i
            while (cur > 0 && value < arr[cur - 1]) {
                arr[cur] = arr[cur - 1]
                cur -= 1
            }
            arr[cur] = value
        }
    }
}
