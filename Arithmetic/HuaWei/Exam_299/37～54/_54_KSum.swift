//
//  _54_KSum.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/2.
//

import Foundation

class _54_KSum {
    
    private var res = Set<[Int]>()
    private var path = [Int]()
    func test(_ input: String, _ k: String, _ tar: String) {
        let count = Int(k)!
        let target = Int(tar)!
        var nums = input.split(separator: " ").compactMap { Int(String($0)) }
        dfs(&nums, count, target, 0, 0)
        print(res.count)
    }

    private func dfs(_ nums: inout [Int], _ k: Int, _ target: Int, _ sum: Int, _ start: Int) {
        if path.count == k && sum == target {
            res.insert(path.sorted())
            return
        }
        for i in start..<nums.count {
            let num = nums[i]
            if path.count == 3 { continue } // 剪枝
            path.append(num)
            dfs(&nums, k, target, sum + num, i + 1)
            path.removeLast()
        }
    }
}
