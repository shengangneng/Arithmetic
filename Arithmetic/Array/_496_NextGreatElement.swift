//
//  _496_NextGreatElement.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

// https://leetcode.cn/problems/next-greater-element-i/

struct _496_NextGreatElement {
    
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        // key保存值，value保存对应nums2中index
        var map = [Int : Int]()

        // 将nums2的信息存进去map中
        for i in 0..<nums2.count {
            let num = nums2[i]
            if map[num] == nil {
                map[num] = i
            }
        }

        var arr = [Int]()
        for i in 0..<nums1.count {
            let num = nums1[i]
            let index = map[num]!
            if index == nums2.count - 1 {
                // 已经是最后一个index了
                arr.append(-1)
            } else {
                var greater = -1
                for j in (index + 1)..<nums2.count {
                    if nums2[j] > num {
                        greater = nums2[j]
                        break
                    }
                }
                arr.append(greater)
            }
        }
        return arr
    }
}
