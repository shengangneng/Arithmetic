//
//  _121_BestTimeToBuyStock.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/best-time-to-buy-and-sell-stock/
struct _121_BestTimeToBuyStock {
    
    // 优雅
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxResult = 0

        for price in prices {
            minPrice = min(price, minPrice)
            maxResult = max(maxResult, price - minPrice)
        }
        return maxResult
    }
    
    
//    func maxProfit(_ prices: [Int]) -> Int {
//        var minPrice = prices[0]
//        var maxResult = 0
//
//        for price in prices {
//            if price < minPrice {
//                minPrice = price
//            } else {
//                if price - minPrice > maxResult {
//                    maxResult = price - minPrice
//                }
//            }
//        }
//        return maxResult
//    }
    
//    // 暴力破解
//    func maxProfit(_ prices: [Int]) -> Int {
//        let count = prices.count
//        var maxVal = 0
//        for i in 0..<count - 1 {
//            let num = prices[i]
//            var value = 0
//            for j in (i+1)..<count {
//                let numJ = prices[j]
//                if numJ > num {
//                    value = (numJ - num) > value ? (numJ - num) : value
//                }
//            }
//            maxVal = maxVal > value ? maxVal : value
//        }
//        return maxVal
//    }

}
