//
//  _213_Rob.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation

struct _213_Rob {

    // [2,1,1,2]
    func rob(_ nums: [Int]) -> Int {
        if nums.count == 1 { return nums[0] }
        var nums = nums
        var map = [Int:Int]()
        var map1 = [Int:Int]()
        let one = rob(&nums, 0, nums.count - 2, &map)
        let two = rob(&nums, 1, nums.count - 1, &map1)
        let res = max(one, two)
        return res
    }

    func rob(_ nums: inout [Int],_ from: Int, _ index: Int, _ map: inout [Int:Int]) -> Int {
        if index < from || index >= nums.count { return 0 }

        if map[index] != nil { return map[index]! }

        let curVal = getVal(&nums, from, index) + rob(&nums, from, index - 2, &map)
        let nextVal = getVal(&nums, from, index - 1) + rob(&nums, from, index - 3, &map)

        let maxVal = max(curVal, nextVal)
        
        map[index] = maxVal
        return maxVal
    }

    func getVal(_ nums: inout [Int], _ from: Int, _ index: Int) -> Int {
        if index < from || index >= nums.count { return 0 }
        return nums[index]
    }
}
