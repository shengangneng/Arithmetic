//
//  _HJ_52_Levenshtein.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation
// 备忘录搜：计算字符串的编辑距离

// https://www.nowcoder.com/practice/3959837097c7413a961a135d7104c314?tpId=37&tqId=21275&rp=1&ru=/exam/oj/ta&qru=/exam/oj/ta&sourceUrl=%2Fexam%2Foj%2Fta%3FtpId%3D37&difficulty=undefined&judgeStatus=undefined&tags=&title=
struct _HJ_52_Levenshtein {
    func levenshtein(_ strA: String, _ strB: String) {
        let cs1 = Array(strA)
        let cs2 = Array(strB)
        var dp = Array(repeating: Array(repeating: 0, count: cs2.count + 1), count: cs1.count + 1)
        // 初始化
        dp[0][0] = 0
        for i in 1...cs1.count {
            dp[i][0] = i
        }
        for i in 1...cs2.count {
            dp[0][i] = i
        }
        // 状态转移
        for i in 1...cs1.count {
            for j in 1...cs2.count {
                let top = dp[i - 1][j] + 1      // 记录删除
                let left = dp[i][j - 1] + 1     // 记录插入
                var leftTop = dp[i - 1][j - 1]  // 记录转换
                if (cs1[i - 1] != cs2[j - 1]) {
                    leftTop += 1
                }
                dp[i][j] = min(min(top, left), leftTop)
            }
        }
        // print(dp)
        print(dp[cs1.count][cs2.count])
    }
}
