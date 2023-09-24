//
//  _4_FindMiddle.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation


struct _4_FindMiddle {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        if nums1.count == 0 && nums2.count == 0 { return 0 }

        let count = nums1.count + nums2.count
        let odd = count & 1 == 1    // 是否奇数
        let index = count >> 1      // 中位数index，如果是偶数，那么需要返回index和index-1
        // 其中一个数组是空的
        if nums1.count == 0 {
            return odd ? Double(nums2[index]) : (Double(nums2[index]) + Double(nums2[index - 1])) / 2.0
        }
        if nums2.count == 0 {
            return odd ? Double(nums1[index]) :  (Double(nums1[index]) + Double(nums1[index - 1])) / 2.0
        }
        
        // 两个数组都不为空
        var l = 0
        var r = 0
        var arr = [Int]()
        while true {
            if arr.count - 1 >= index { break }
            if l >= nums1.count {
                arr.append(nums2[r])
                r += 1
            } else if r >= nums2.count {
                arr.append(nums1[l])
                l += 1
            } else {
                if nums1[l] <= nums2[r] {
                    arr.append(nums1[l])
                    l += 1
                } else {
                    arr.append(nums2[r])
                    r += 1
                }
            }
        }
        return odd ? Double(arr[arr.count - 1]) : (Double(arr[arr.count - 1]) + Double(arr[arr.count - 2])) / 2.0
    }
}

