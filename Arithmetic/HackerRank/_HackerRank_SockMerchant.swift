//
//  _HackerRank_SockMerchant.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation

/*
 输入：[10, 20, 20, 10, 10, 30, 50, 10, 20]
 输出，由于10和10一组，20和20一组，10和10一组，还剩30，50，20没办法找到组，返回总共找到了多少组。
 */
// https://www.hackerrank.com/challenges/sock-merchant/problem?isFullScreen=true&h_r=next-challenge&h_v=zen
struct _HackerRank_SockMerchant {
    
    func sockMerchant(n: Int, ar: [Int]) -> Int {
        var map = [Int : Int]()
        var count = 0
        for i in 0..<n {
            let num = ar[i]
            if map[num] == nil {
                map[num] = 1
            } else {
                count += 1
                map[num] = nil
            }
        }
        return count
    }
}
