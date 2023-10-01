//
//  _84_LargestRectangleArea.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _84_LargestRectangleArea {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var maxCount = 0
        var stack = [0]
        var heights = heights
        heights.append(0)   // 尾部加入一个0元素，让[2,4,6,8]这种递增序列最后元素可以计算
        for i in 1..<heights.count {
            if heights[i] > heights[stack.last!] {
                stack.append(i)
            } else if heights[i] == heights[stack.last!] {
                stack.removeLast()
                stack.append(i)
            } else {
                while !stack.isEmpty && heights[i] < heights[stack.last!] {
                    let mid = stack.removeLast()
                    if !stack.isEmpty {
                        let r = i
                        let l = stack.last!
                        let w = r - l - 1
                        if w > 0 { maxCount = max(maxCount, w * heights[mid]) }
                    }
                }
                stack.append(i)
            }
        }
        return maxCount
    }
    
    
    
    
    
    
//    func largestRectangleArea(_ heights: [Int]) -> Int {
//
//        var lstack = [0]
//        var lres = Array(repeating: heights.count, count: heights.count)
//
//        var rstack = [heights.count - 1]
//        var rres = Array(repeating: -1, count: heights.count)
//        for i in 1..<heights.count {
//            if heights[i] >= heights[lstack.last!] {
//                lstack.append(i)
//            } else {
//                while !lstack.isEmpty && heights[i] < heights[lstack.last!] {
//                    lres[lstack.last!] = i
//                    lstack.removeLast()
//                }
//                lstack.append(i)
//            }
//
//            let rindex = heights.count - i - 1
//            if heights[rindex] >= heights[rstack.last!] {
//                rstack.append(rindex)
//            } else {
//                while !rstack.isEmpty && heights[rindex] < heights[rstack.last!] {
//                    rres[rstack.last!] = rindex
//                    rstack.removeLast()
//                }
//                rstack.append(rindex)
//            }
//        }
//        // 原数组：[2,1,5,6,2,3]
//        // 左到右，找第一个比自己小的[1,-1,4,4,-1,]
//        // 右到左，找第一个比自己小的[-1,-1,1,2,1,4]
//        var maxCount = 0
//        for i in 0..<heights.count {
//            let l = lres[i]
//            let r = rres[i]
//            let h = heights[i]
//            let w = l - r - 1
//            if w > 0 {
//                maxCount = max(maxCount, w * h)
//            }
//        }
//        return maxCount
//    }
}
