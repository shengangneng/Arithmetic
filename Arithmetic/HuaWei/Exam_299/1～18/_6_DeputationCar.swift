//
//  _6_DeputationCar.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 可以坐满车的方案数量，标准的dp
// 如果坐不满，输出数量0
// 比如 5,4,2,3,2,4,9  10
// 【11分钟】
class _6_DeputationCar {
    
    private var res = [[Int]]()
    private var path = [Int]()
    func test(_ input1: String, _ input2: String) {
        var nums = input1.split(separator: ",").compactMap { Int(String($0)) }
        let target = Int(input2)!
        dfs(target, &nums, 0, 0)
        print(res.count)
    }
    
    private func dfs(_ target: Int, _ nums: inout [Int], _ start: Int, _ sum: Int) {
        if sum >= target {
            if sum == target {
                res.append(path)
            }
            return
        }
        for i in start..<nums.count {
            let num = nums[i]
            if sum + num > target { return }    // 剪枝：已经超过目标值
            path.append(num)
            dfs(target, &nums, i + 1, sum + num)
            path.removeLast()
        }
    }
}
