//
//  _77_DP_Combine.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _77_DP_Combine {
    
    var path = [Int]()
    var res = [[Int]]()
    func combine(_ n: Int, _ k: Int) -> [[Int]] {
        dfs(n, k, 1)
        return res
    }

    func dfs(_ n: Int, _ k: Int, _ start: Int) {
        if path.count == k {
            res.append(path)
            return
        }
        var end = n - (k - path.count) + 1  // 剪枝
        guard start <= end else { return }
        for i in start...end {
            path.append(i)
            dfs(n, k, i + 1)
            path.removeLast()   // 回溯
        }
    }
}
