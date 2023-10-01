//
//  _895_MostRateStack.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _895_MostRateStack {
    
    class FreqStack {

        var stack: [Int]
        var map: [Int:Int]
        init() {
            stack = [Int]()
            map = [Int:Int]()
        }
        
        func push(_ val: Int) {
            stack.append(val)
            if map[val] == nil {
                map[val] = 1
            } else {
                map[val]! += 1
            }
        }
        
        func pop() -> Int {
            var maxCount = Int.min
            for (_, count) in map {
                if (count > maxCount) {
                    maxCount = count
                }
            }
            for i in (0..<stack.count).reversed() {
                let num = stack[i]
                if map[num] == maxCount {
                    stack.remove(at: i)
                    map[num]! -= 1
                    return num
                }
            }
            return -1
        }
    }
}
