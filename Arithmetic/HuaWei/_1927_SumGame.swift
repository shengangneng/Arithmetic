//
//  _1927_SumGame.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/23.
//

import Foundation

struct _1927_SumGame {
    func sumGame(_ num: String) -> Bool {
        let nums = Array(num)
        var leftCount = 0
        var rightCount = 0
        var left: Int = 0
        var right: Int = 0
        var l = 0
        var r = nums.count - 1
        while l < r {
            let nl = nums[l]
            let nr = nums[r]
            if nl == "?" { leftCount += 1} else { left += Int(String(nl))! }
            if nr == "?" { rightCount += 1} else { right += Int(String(nr))! }
            l += 1
            r -= 1
        }
        // 没有?，直接得到结果
        if (leftCount + rightCount) == 0 { return left != right }
        // 奇数个?，肯定是Alice赢
        if (leftCount + rightCount) & 1 == 1 { return true }
        
//        if leftCount == 0 {
//            // 25?? 9000????    999000??????    18
//            // (rightCount >> 1) * 9
//            return !((left - right) >= (rightCount >> 1) * 9)
//        } else if rightCount == 0 {
//            return !((right - left) >= (leftCount >> 1) * 9)
//        }
        "str".lowercased()

        // 偶数个?
        // 左右?数量不等：?多的一方数字一定更小，并且差值范围在[9...18]
        // ??008800
        
        let delta = abs(leftCount - rightCount)
        if leftCount > rightCount {
            let isDes = ((delta >> 1) >> 1 == 0 || rightCount >> 1 == 1)  && (leftCount != 0 && rightCount != 0) ? 1 : 0
            return !(left < right && right - left >= (delta >> 1 - isDes) * 9 && right - left <= ((delta >> 1 - isDes) + 1) * 9)
        } else if leftCount < rightCount {
            let isDes = ((delta >> 1) >> 1 == 0 || leftCount >> 1 == 1)  && (leftCount != 0 && rightCount != 0) ? 1 : 0
            return !(left > right && left - right >= (delta >> 1 - isDes) * 9 && left - right <= ((delta >> 1 - isDes) + 1) * 9)
        } else {
            // 左右?相等，差值 > 9，alice赢
            return abs(left - right) > 9
        }
    }
}
