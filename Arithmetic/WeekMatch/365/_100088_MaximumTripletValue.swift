//
//  _100088_MaximumTripletValue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

// 找第一个最大的，使用单调栈【小于等于的入栈，大于的出栈)
class _100088_MaximumTripletValue {
    
    func maximumTripletValue(_ nums: [Int]) -> Int {
        // 找到第一个比自己小的
        var stack = [0]
        var res = Array(repeating: -1, count: nums.count)
        for i in 1..<nums.count {
            if nums[stack.last!] <= nums[i] {
                stack.append(i)
            } else {
                while !stack.isEmpty && nums[stack.last!] > nums[i]  {
                    res[stack.last!] = i
                    stack.removeLast()
                }
                stack.append(i)
            }
        }
        
        var maxCount = 0
        for i in 0..<nums.count {
            let num = nums[i]
            let firstMin = res[i]
            if firstMin == -1 { continue }
            if i + 1 < nums.count && nums[i + 1] > nums[i] { continue }
            for j in firstMin..<nums.count {
                let minNum = nums[j]
                if minNum >= num { continue }
                // k其实就是剩余的数组中找最大值
                let submax = nums.suffix(from: j + 1).max()
                maxCount = max(maxCount, (num - minNum) * (submax ?? 0))
            }
        }
        return maxCount
    }
}
