//
//  _506_RelativeRank.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/relative-ranks/
struct _506_RelativeRank {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var mScore = score
        insertSort(&mScore)

        var map = [Int : String]()
        for i in 0..<mScore.count {
            let num = mScore[i]
            if i > 2 {
                map[num] = "\(i + 1)"
                continue
            }
            if 0 == i {
                map[num] = "Gold Medal"
            } else if 1 == i {
                map[num] = "Silver Medal"
            } else {
                map[num] = "Bronze Medal"
            }
        }

        var result = [String]()
        for num in score {
            result.append(map[num]!)
        }
        return result
    }

    func insertSort(_ arr: inout [Int]) {
        let count = arr.count
        for i in 0..<count {
            let value = arr[i]
            var cur = i
            while (cur > 0 && value > arr[cur - 1]) {
                arr[cur] = arr[cur - 1]
                cur -= 1
            }
            arr[cur] = value
        }
    }
}
