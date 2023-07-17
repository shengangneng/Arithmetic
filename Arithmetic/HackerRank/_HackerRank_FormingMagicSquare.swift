//
//  _HackerRank_FormingMagicSquare.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation
/*
    sample: 4 8 2
            4 5 7
            6 1 6
 
 替换[0][1] 的8 --> 9：消耗1
 替换[1][0] 的4 --> 3：消耗1
 替换[2][0] 的6 --> 8：消耗2  总共消耗4
 
 
    结果: 4 9 2
         3 5 7
         8 1 6
 
 找规律：
    首先中间一定是5
    其他组合肯定是1和9、2和8、3和7、4和6
 
    保存原来的数组
    计算每一种可能的数组
 
 8 3 4
 1 5 9
 6 7 2
 
 
*/


// https://www.hackerrank.com/challenges/magic-square-forming/problem?isFullScreen=true
struct _HackerRank_FormingMagicSquare {
    
    // 找规律：首先中间一定是5
    //
    
//    func formingMagicSquare(s: [[Int]]) -> Int {
//
//        var map = [Int : Int]()
//        // must contains 1~9
//        for i in 0..<3 {
//            let arr = s[i]
//            for j in 0..<3 {
//                let val = arr[j]
//                map[val] = map[val] == nil ? 1 : map[val]! + 1
//            }
//        }
//        // miss: 3 9
//        var missArr = [Int]()
//        for i in 0..<9 {
//            if map[i] == nil {
//                missArr.append(i)
//            }
//        }
//
//    }
}
