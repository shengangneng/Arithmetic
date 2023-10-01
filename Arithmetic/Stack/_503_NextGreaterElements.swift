//
//  _503_NextGreaterElements.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _503_NextGreaterElements {
    func nextGreaterElements(_ nums: [Int]) -> [Int] {
        var stack = [0]
        var res = Array(repeating: -1, count: nums.count)
        for i in 1..<(nums.count * 2) {
            let index = i % nums.count
            if nums[index] <= nums[stack.last!] {
                stack.append(index)
            } else {
                while !stack.isEmpty && nums[index] > nums[stack.last!] {
                    res[stack.last!] = nums[index]
                    stack.removeLast()
                }
                stack.append(index)
            }
        }
        return res
    }
    
//    func nextGreaterElements(_ nums: [Int]) -> [Int] {
//        var nums = nums
//        var stack = [0]
//        nums.insert(contentsOf: nums, at: 0)
//        var res = Array(repeating: -1, count: nums.count)
//        for i in 1..<nums.count {
//            if nums[i] <= nums[stack.last!] {
//                stack.append(i)
//            } else {
//                while !stack.isEmpty && nums[i] > nums[stack.last!] {
//                    res[stack.last!] = nums[i]
//                    stack.removeLast()
//                }
//                stack.append(i)
//            }
//        }
//        res = Array(res.prefix(nums.count >> 1))
//        return res
//    }
}
