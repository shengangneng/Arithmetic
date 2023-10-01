//
//  _5_FiveInFive.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

/*
 
 -1白、0空、1黑  L长度，奇数、
 下一步棋，使得最大连续长度增加
 最大连续长度不能超过5
 如果存在多个位置，返回最靠近中间的较小位置
 如果不存在可行位置，返回-1
 
 */
//【32分钟】
class _5_FiveInFive {
    func test(_ node: Int, _ nums: [Int]) {
        // 找到所有的0元素坐标
        var zeros = [Int]()
        for i in 0..<nums.count {
            let num = nums[i]
            if num == 0 {
                zeros.append(i)
            }
        }
        if zeros.count == 0 {
            print(-1)
            return
        }
        
        var resTuple = (-1, 0)
        for i in zeros {
            var temp = nums
            temp[i] = node
            var maxCount = 0
            var count = 0
            for num in temp {
                if num == node {
                    count += 1
                } else {
                    count = 0
                }
                maxCount = max(maxCount, count)
            }
            if maxCount <= 5 {
                if maxCount > resTuple.1 {
                    // 找到更大的
                    resTuple = (i, maxCount)
                } else if maxCount == resTuple.1 {
                    // 找到相等的最大值
                    let minIndex = nums.count >> 1
                    if i <= minIndex && resTuple.0 <= minIndex {
                        resTuple.0 = max(i, resTuple.0)
                    } else if i >= minIndex && resTuple.0 >= minIndex {
                        resTuple.0 = min(i, resTuple.0)
                    } else {
                        if abs(minIndex - i) == abs(minIndex - resTuple.0) {
                            resTuple.0 = min(i, resTuple.0)
                        } else if abs(minIndex - i) > abs(minIndex - resTuple.0) {
                            resTuple.0 = resTuple.0
                        } else {
                            resTuple.0 = i
                        }
                    }
                }
            }
        }
        
        print(resTuple.0)
    }
}
