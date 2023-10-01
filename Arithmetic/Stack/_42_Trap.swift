//
//  _42_Trap.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _42_Trap {
    func trap(_ height: [Int]) -> Int {
        if height.count <= 2 { return 0 }
        var stack = [0]
        var sum = 0
        for i in 1..<height.count {
            if height[i] < height[stack.last!] {
                stack.append(i)
            } else if height[i] == height[stack.last!] {
                stack.removeLast()
                stack.append(i)
            } else {
                while !stack.isEmpty && height[i] > height[stack.last!] {
                    let mid = height[stack.removeLast()]
                    if !stack.isEmpty {
                        let cur = height[i]
                        let lef = height[stack.last!]
                        let h = min(cur, lef) - mid
                        let w = i - stack.last! - 1
                        if h > 0 { sum += w * h }
                    }
                }
                stack.append(i)
            }
        }
        return sum
    }
}
