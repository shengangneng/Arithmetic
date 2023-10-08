//
//  _62_CalSepaCount.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/2.
//

import Foundation

class _62_CalSepaCount {
    // 最多只能包含两件小礼品
    func test(_ target: String, _ numstr: String) {
        let maxPrice = Int(target)!
        let prices = numstr.split(separator: " ").compactMap { Int(String($0)) }
        var left = 0
        var right = prices.count - 1
        var result = 0
        while left < right {
            let sum = prices[left] + prices[right]
            if sum <= maxPrice {
                // 当前组的价格总和不超过上限，左指针往右移动
                left += 1
            }
            right -= 1
            result += 1
        }
        if left == right {
            // 如果最后左右指针相遇，还需要再统计一组
            result += 1
        }
        print(result)
    }
}
