//
//  _350_InterOfTwoArr2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/intersection-of-two-arrays-ii/submissions/
struct _350_InterOfTwoArr2 {
    
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        
        if nums1.count == 0 || nums2.count == 0 {
            return []
        }

        var map = [Int : Int]()

        for num in nums1 {
            map[num] = map[num] == nil ? 1 : map[num]! + 1
        }

        var arr = [Int]()
        for num in nums2 {
            if map[num] == nil {
                continue
            }
            if map[num]! >= 1 {
                arr.append(num)
                map[num] = map[num]! - 1
            }
        }

        return arr
    }
    
}
