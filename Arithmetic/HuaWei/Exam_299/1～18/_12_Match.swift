//
//  _12_Match.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 
 4,5
 10,6,9,7,6
 9,10,6,7,5
 8,10,6,5,10
 9,10,8,4,9
 输出
 2,1,5
 
 说明
 第一行代表有4个评委，5个选手参加比赛矩阵代表是4*5，每个数字是选手的编号，2号选手得分36分排第1，1号选手36分排第5号选手30分(2号
 行代表一个评委对
 1号10只直只有1个，所以2号排第一)

 说明：
 一个有N个选手参加比赛，选手编号为1~N (3<=N<=100)，有M (3<=M<=10) 个评委对选手进行打分。打分规则为每个评委对选手打分，最高分10分，最低分1分。
 请计算得分最多的3位选手的编号
 如果得分相同，则得分高分值最多的选手排名靠前
 。(10分数量相同，则比较9分的数量，以此类推，用例中不会出现多个选手得分完全相同的情况)。
 
 _12_Match().test("4,5", ["10,6,9,7,6", "9,10,6,7,5", "8,10,6,5,10", "9,10,8,4,9"])
 
 【25分钟】
 */
class _12_Match {
    func test(_ mn: String, _ input: [String]) {
        let mna = mn.split(separator: ",").compactMap { Int(String($0)) }
        let m = mna[0]  // 4
        let n = mna[1]  // 5
        var score = [[Int]]()
        for str in input {
            let arr = str.split(separator: ",").compactMap { Int(String($0)) }
            score.append(arr)
        }
        
        // 列,index,最大值,最大值出现次数
        var res = Array(repeating: [0,0,0,0], count: n)
        for j in 0..<n {
            for i in 0..<m {
                res[j][0] += score[i][j]
                res[j][1] = j + 1
                res[j][2] = max(res[j][1], score[i][j])
            }
        }
        
        for j in 0..<n {
            for i in 0..<m {
                if score[i][j] == res[j][1] {
                    res[j][3] += 1
                }
            }
        }
        
        res = res.sorted { v1, v2 in
            if v1[0] == v2[0] {     // 分数相同，比较最高分
                if v1[2] == v2[2] { // 最高分也相同
                    return v1[3] > v2[3]    // 高分次数最多的
                } else {
                    return v1[2] > v2[2]
                }
            } else {
                return v1[0] > v2[0]
            }
        }
        
        var str = ""
        for i in 0..<3 {
            let item = res[i]
            if str.count == 0 {
                str.append("\(item[1])")
            } else {
                str.append(",\(item[1])")
            }
        }
        
        print(str)
    }
}
