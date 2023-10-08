//
//  _114_CountSeven.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/4.
//

import Foundation

class _114_CountSeven {
    func test(_ input: String) {
        let nums = input.split(separator: " ").compactMap { Int(String($0)) }
        let length = nums.count
        var total = 0
        for i in 0..<length {
            total += nums[i]
        }
        var arr = Array(repeating: 0, count: length)
        var count = 7   // 从7开始往上数，每数到一个，total就减少1
        while total > 0 {
            if count % 7 == 0 || String(count).contains("7") {
                arr[(count - 1) % length] += 1
                total -= 1
            }
            count += 1
        }
        
        var result = ""
        for i in 0..<length {
            if 0 == i {
                result.append("\(arr[i])")
            } else {
                result.append(" \(arr[i])")
            }
        }
        print(result)
    }
}
