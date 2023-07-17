//
//  _349_InterOfTwoArr.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/intersection-of-two-arrays/
struct _349_InterOfTwoArr {
    
    func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        if (nums1.count == 0 || nums2.count == 0) {
            return []
        }

        var map = [Int : Int]()

        for num in nums1 {
            if map[num] == nil {
                map[num] = 1
            }
        }

        var arr = [Int]()
        for num in nums2 {
            if map[num] != nil {
                map[num] = nil
                arr.append(num)
            }
        }

        return arr
    }
}
