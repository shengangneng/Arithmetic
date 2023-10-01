//
//  _496_NextGreaterElement.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _496_NextGreaterElement {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var stack = [0]
        var res = Array(repeating: -1, count: nums1.count)
        var map = [Int:Int]()
        for i in 0..<nums1.count {
            map[nums1[i]] = i
        }
        for i in 1..<nums2.count {
            if nums2[i] < nums2[stack.last!] {
                stack.append(i)
            } else {
                while !stack.isEmpty && nums2[i] > nums2[stack.last!] {
                    if map[nums2[stack.last!]] != nil {
                        // 这时候，i就是第一个比stack.last!元素大的位置
                        let index = map[nums2[stack.last!]]!    // 取出数值在num1的index
                        res[index] = nums2[i]
                    }
                    stack.removeLast()
                }
                stack.append(i)
            }
        }
        return res
    }
}
