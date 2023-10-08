//
//  _36_JumpHouse2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

class _36_JumpHouse2 {
    private var nums = [Int]()
    private var res = [[Int]]()
    private var path = [Int]()
    func test(_ input1: String, _ input2:[Int]) -> [Int] {
        let target = Int(input1)!
        nums = input2
        dfs(&nums, target, 0, 0)
        return res.first ?? []
    }

    private func dfs(_ nums: inout [Int], _ target: Int, _ sum: Int, _ start: Int) {
        if path.count == 3 {
            if sum == target {
                res.append(path)
            }
            return
        }
        for i in start..<nums.count {
            let num = nums[i]
            if sum + num > target || path.count >= 3 { continue }
            path.append(num)
            dfs(&nums, target, sum + num, i + 1)
            path.removeLast()
        }
    }
}
