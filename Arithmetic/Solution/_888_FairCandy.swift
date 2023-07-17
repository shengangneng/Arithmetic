//
//  _888_FairCandy.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/fair-candy-swap/
struct _888_FairCandy {
    func fairCandySwap(_ aliceSizes: [Int], _ bobSizes: [Int]) -> [Int] {
        var aliceResult = 0
        for num in aliceSizes {
            aliceResult += num
        }

        var bobResult = 0
        for num in bobSizes {
            bobResult += num
        }

        var delta = 0
        if aliceResult > bobResult {
            delta = (aliceResult - bobResult) / 2
            // alice这边要拿一个大的去交换bob的小的
            for a in aliceSizes {
                for b in bobSizes {
                    if b == a - delta {
                        return [a, b]
                    }
                }
            }

        } else {
            delta = (bobResult - aliceResult) / 2
            // bob这边要拿一个大的去交换alice的小的

            for a in aliceSizes {
                for b in bobSizes {
                    if b == a + delta {
                        return [a, b]
                    }
                }
            }
        }

        return [0, 0]
    }
}
