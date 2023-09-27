//
//  _216_DP_CombinationSum3.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _216_DP_CombinationSum3 {
    
    private var path = [Int]()
    private var res = [[Int]]()
    func combinationSum3(_ k: Int, _ n: Int) -> [[Int]] {
        dfs(n, 0, k, 1)
        return res
    }

    // sum : 当前已经累计和
    func dfs(_ target: Int, _ sum: Int, _ k: Int, _ start: Int) {
        if path.count == k {
            if target == sum {
                res.append(path)
            }
            return
        }
        
        let end = 9 - (k - path.count) + 1
        guard start <= end else { return }  // 剪枝
        for i in start...end {
            if sum + i > target { return }  // 剪枝
            path.append(i)
            dfs(target, sum + i, k, i + 1)
            path.removeLast()
        }
    }
}
