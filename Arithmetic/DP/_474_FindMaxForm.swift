//
//  _474_FindMaxForm.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/7.
//

import Foundation

struct _474_FindMaxForm {
    
    func findMaxForm(_ strs: [String], _ m: Int, _ n: Int) -> Int {
        var dp = Array(repeating:Array(repeating: 0, count: n + 1), count:m + 1)
        for str in strs {
            let zeroNum = str.replacingOccurrences(of: "1", with: "").count
            let oneNum = str.replacingOccurrences(of: "0", with: "").count
            if (m >= zeroNum && n >= oneNum) {
                for i in (zeroNum...m).reversed() {
                    for j in (oneNum...n).reversed() {
                        dp[i][j] = max(dp[i][j], dp[i - zeroNum][j - oneNum] + 1)
                    }
                }
            }
        }
        return dp[m][n]
    }
}

