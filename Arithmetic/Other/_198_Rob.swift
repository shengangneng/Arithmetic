//
//  _198_Rob.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation

// https://leetcode.cn/problems/house-robber/
struct _198_Rob {
    
    // 需要使用map来保存结果，否则会超时
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        if nums.count == 0 { return 0 }
        var nums = nums
        var map: [Int:Int] = [Int:Int]()
        let res = rob(&nums, nums.count - 1, &map)
        return res
    }

    func rob(_ nums: inout [Int], _ index: Int, _ map: inout [Int:Int]) -> Int {
        if index < 0 || index >= nums.count { return 0 }
        
        if map[index] != nil {
            return map[index]!
        }

        let curVal = getVal(&nums, index) + rob(&nums, index - 2, &map)
        let nextVal = getVal(&nums, index - 1) + rob(&nums, index - 3, &map)
        let maxVal = max(curVal, nextVal)
        map[index] = maxVal
        
        return maxVal
    }
    
    private func getVal(_ nums: inout [Int], _ index: Int) -> Int {
        if index < 0 || index >= nums.count { return 0 }
        return nums[index]
    }
}
