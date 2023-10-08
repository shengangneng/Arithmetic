//
//  _34_FileToMatch.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/1.
//

import Foundation

// https://zhuanlan.zhihu.com/p/643162424
class _34_FileToMatch {
    func test(_ input: String) {
        var nums = input.split(separator: ",").compactMap { Int(String($0)) }
        var l = 1
        var r = nums.count
        var ans = r
        // 二分查找模版
        while l <= r {
            let mid = (l + r) >> 1
            if check(mid, &nums) {
                ans = mid
                r = mid - 1
            } else {
                l = mid + 1
            }
        }
        print(ans)
    }
    
    private func check(_ count: Int, _ nums: inout [Int]) -> Bool {
        var bucket = Array(repeating: 0, count: count)
        return dfs(&bucket, &nums, nums.count - 1)
    }
    
    private func dfs(_ buckets: inout [Int], _ nums: inout [Int], _ index: Int) -> Bool {
        if index == -1 {
            return true
        }
        for i in 0..<buckets.count {
            if i != 0 && buckets[i] == buckets[i - 1] { // 剪枝
                continue
            }
            if buckets[i] + nums[index] <= 500 {
                buckets[i] += nums[index]
                if (dfs(&buckets, &nums, index - 1)) {
                    return true
                }
                buckets[i] -= nums[index]
            }
        }
        return false
    }
}




//private var res = [[Int]]()
//private var path = [Int]()
//func test(_ input: String) {
//    let nums = input.split(separator: ",").compactMap { Int(String($0)) }
//    var map = [Int:Int]()
//    var count = 0
//    var restTotal = 0
//    for num in nums {
//        if num == 500 {
//            count += 1
//            continue
//        } else if num > 500 {
//            continue
//        } else {
//            let rest = 500 - num
//            if map[rest] != nil {
//                count += 1
//                map[rest]! -= 1
//                if map[rest]! <= 0 {
//                    map.removeValue(forKey: rest)
//                }
//                restTotal -= rest
//            } else {
//                if map[num] == nil {
//                    map[num] = 1
//                } else {
//                    map[num]! += 1
//                }
//                restTotal += num
//            }
//        }
//    }
//    if restTotal < 500 {
//        print(count)
//    } else {
//        // 剩余总额超过500
//        var array = [Int]()
//        for (key, value) in map {
//            for _ in 0..<value {
//                array.append(key)
//            }
//        }
//        array = array.sorted()
//        print(array)
//        // 使用回溯算法
//        dfs(0, 0, &array)
//        print(count + res.count)
//    }
//}
//
//private func dfs(_ sum: Int, _ start: Int, _ nums: inout [Int]) {
//    if sum == 500 {
//        res.append(path)
//        return
//    }
//
//}
