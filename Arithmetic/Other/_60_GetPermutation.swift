//
//  _60_GetPermutation.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/19.
//

import Foundation

// https://leetcode.cn/problems/permutation-sequence/
struct _60_GetPermutation {
    // k
    // 120  = 5 * 24
    // 24   = 4 * 6
    // 6    = 3 * 2
    // 2    = 2 * 1
    // 1    = 1

    // 123
    // 132

    // 213
    // 231      4

    // 312
    // 321
    // 4%2=0 --> 第一个数是：(4-0)/2+1 =

    // 1234
    // 1243
    // 1324
    // 1342
    // 1423
    // 1432

    // 2134
    // 2143
    // 2314     9
    // 2341
    // 2413
    // 2431     12

    // 3124
    // 3143     14
    // 3214
    // 3241
    // 3412
    // 3421
    // 14%6=2 --> 第一个数字是(14-2)/6+1 = 3
    // 第二个数字利用余数2 --> 2%2=0 --> (2-0)/2 = 1
    // 第三个数字利用1 --> 1%1=0 -->
    func getPermutation(_ n: Int, _ k: Int) -> String {
        var nums = [Int]()
        var k = k
        for i in 1...n {
            nums.append(i)
        }
        var res = ""
        
        for i in (2...n).reversed() {
            let count = getCount(i)
            let count2 = count / i
            let rest = k % count2
            var index = 0
            if rest == 0 {
                index = k / count2 - 1
                res.append("\(nums[index])")
            } else {
                index = (k - rest) / count2
                res.append("\(nums[index])")
            }
            nums.remove(at: index)
            k -= count2 * (index)
        }
        if let num = nums.first {
            res.append("\(num)")
        }
        
        return res
    }

    // 获取总共有多少个数字
    func getCount(_ n: Int) -> Int {
        if n < 2 { return n }
        return n * getCount(n - 1)
    }
}


/*
 

 // k
 // 120  = 5 * 24
 // 24   = 4 * 6
 // 6    = 3 * 2
 // 2    = 2 * 1
 // 1    = 1


 // 123
 // 132

 // 213
 // 231      4

 // 312
 // 321
 // 4%2=0 --> 第一个数是：(4-0)/2+1 =

 // 1234
 // 1243
 // 1324
 // 1342
 // 1423
 // 1432

 // 2134
 // 2143
 // 2314     9
 // 2341
 // 2413
 // 2431     12

 // 3124
 // 3143     14
 // 3214
 // 3241
 // 3412
 // 3421
 
 */
