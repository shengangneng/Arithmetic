//
//  _698_DFS_CanPartitionKSubsets.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/10/2.
//

import Foundation

class _698_DFS_CanPartitionKSubsets {
    
    func canPartitionKSubsets(_ nums: [Int], _ k: Int) -> Bool {
        let nums = nums.sorted(by: >)
        let sum = nums.reduce(0, +)
        let n = nums.count
        
        if sum % k != 0 { return false }
        let target = sum / k
        if target < nums[0] { return false }
        
        func backtracking(_ index: Int, _ buckets: [Int]) -> Bool {
            if index == n { return true }
            let cur = nums[index]
            for i in buckets.indices {
                if i > 0 && buckets[i] == buckets[i - 1] {
                    continue
                }
                if buckets[i] + cur <= target {
                    var b = buckets
                    b[i] += cur
                    if backtracking(index + 1, b) {
                        return true
                    }
                }
            }
            
            return false
        }
        
        return backtracking(0, Array(repeating: 0, count: k))
    }
}
