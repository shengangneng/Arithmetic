//
//  _605_CanPlaceFlowers.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _605_CanPlaceFlowers {
    
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        var n = n
        var flowCount = 0
        for i in 0..<flowerbed.count {
            let flow = flowerbed[i]
            if flow == 1 {
                flowCount += 1
            }
        }
        // 花坛没有花
        if flowCount == 0 {
            return (flowerbed.count + 1) >> 1 >= n
        }

        // 花坛至少一朵花
        var start = -1
        for i in 0..<flowerbed.count {
            let flow = flowerbed[i]
            if flow == 1 {
                // 找到了花
                if start == -1 {
                    // 第一次找到花 0001  001
                    let c = i - 1
                    if c > 0 {
                        n -= (c + 1) >> 1
                    }
                } else {
                    // 前面有一个花了 1001
                    let c = i - start - 1 - 2
                    if c > 0 {
                        n -= (c + 1) >> 1
                    }
                }
                start = i
            }// 1 1  2 1 3 2
        }
        let c = flowerbed.count - start - 2
        if c > 0 {    // 0001000
            n -= (c + 1) >> 1
        }
        return n <= 0
    }
}
