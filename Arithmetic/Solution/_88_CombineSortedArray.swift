//
//  _88_CombineSortedArray.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import Foundation

// https://leetcode.cn/problems/merge-sorted-array/solution/
struct _88_CombineSortedArray {
    
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        if n == 0 {
            return
        }
        if m == 0 {
            for i in 0..<n {
                nums1[i] = nums2[i]
            }
            return
        }
        
        let count = m + n - 1
        var index1 = m - 1
        var index2 = n - 1

        for i in (0...count).reversed() {
            if (index1 < 0) {
                nums1[i] = nums2[index2]
                index2 -= 1
                continue
            } else if (index2 < 0) {
                // nums1里面的数字比较大
                nums1[i] = nums1[index1]
                index1 -= 1
                continue
            }
            if (nums2[index2] >= nums1[index1]) {
                // nums2里面的数字比较大
                nums1[i] = nums2[index2]
                index2 -= 1
                continue
            } else {
                // nums1里面的数字比较大
                nums1[i] = nums1[index1]
                index1 -= 1
                continue
            }
        }
        print("")
    }
    
}
