//
//  _31_NumberGame.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

class _31_NumberGame {
    func test(_ nm: String, _ input: String) {
        let arr1 = nm.split(separator: " ").compactMap { Int(String($0)) }
        let n = arr1[0]
        let m = arr1[1]
        let nums = input.split(separator: " ").compactMap { Int(String($0)) }
        
        var map = [0:-1]
        var sum = 0
        for i in 0..<nums.count {
            sum = (sum + nums[i]) % m
            if map[sum] != nil {
                print("1")
                return
    //            let pos = map[sum]!
    //            if i - pos > 2 {
    //                return true
    //            }
            } else {
                map[sum] = i
            }
        }
        print("0")
    }
}
