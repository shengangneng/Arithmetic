//
//  _Zhou_10049_BultyTower2.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

struct _Zhou_10049_BultyTower2 {
    func maximumSumOfHeights(_ maxHeights: [Int]) -> Int {
        if maxHeights.count == 1 { return maxHeights[0] }
        let nums = maxHeights
        
        var res = 0
        var set = Set<Int>()
        for num in nums {
            set.insert(num)
            res += num
        }
        let sorSet = set.sorted()
        
        if sorSet.count == 1 {
            return res
        }
        
        res = 0
        var maxIdArray = [Int]()
        for i in 0..<nums.count {
            if set.count <= 5 {
                if nums[i] != sorSet.first {
                    maxIdArray.append(i)
                }
            } else {
                
                if nums[i] == sorSet[sorSet.count - 1] || nums[i] == sorSet[sorSet.count - 2] || nums[i] == sorSet[sorSet.count - 3] {
                    maxIdArray.append(i)
                }
            }
        }
        for i in maxIdArray {
            var total = nums[i]
            
            if (i - 1) >= 0 {
                var lp = nums[i]
                for j in (0...(i - 1)).reversed() {
                    if nums[j] > lp {
                        total += lp
                    } else {
                        total += nums[j]
                        lp = nums[j]
                    }
                }
            }
            
            if nums.count > (i + 1) {
                var rp = nums[i]
                for j in (i + 1)..<nums.count {
                    if nums[j] > rp {
                        total += rp
                    } else {
                        total += nums[j]
                        rp = nums[j]
                    }
                }
            }
            res = max(res, total)
        }
        return res
    }
}

// [6,5,3,9,2,7,9]    3  3 3 9 2 2 2
// [6,5,3,9,2,7,9]    2  2 2 2 2 7 9
