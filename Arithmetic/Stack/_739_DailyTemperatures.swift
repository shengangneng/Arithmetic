//
//  _739_DailyTemperatures.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _739_DailyTemperatures {
    // 结果是求"距离数组"
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack = [0]
        var res = Array(repeating: 0, count: temperatures.count)
        for i in 1..<temperatures.count {
            if temperatures[i] <= temperatures[stack.last!] {
                stack.append(i)
            } else {
                while !stack.isEmpty && temperatures[i] > temperatures[stack.last!] {
                    // 这时候，i就是第一个比stack.last!元素大的位置
                    res[stack.last!] = i - stack.last!
                    stack.removeLast()
                }
                stack.append(i)
            }
        }
        return res
    }
}
