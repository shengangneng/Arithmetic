//
//  _KusiShou_01.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation

struct _KusiShou_01 {
    
    func sumIndicesWithKSetBits(_ nums: [Int], _ k: Int) -> Int {
        var res = 0
        for i in 0..<nums.count {
            let val = nums[i]
            if oneCount(i) == k {
                res += val
            }
        }
        return res
    }
    
    func oneCount(_ num: Int) -> Int {
        var num = num
        var count = 0
        while num > 1 {
            if num % 2 == 1 {
                count += 1
            }
            num = num / 2
        }
        if num == 1 { count += 1 }
        return count
    }
}
