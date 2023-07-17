//
//  _HackerRank_BonAppetit.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/17.
//

import Foundation
/*
 
 
 bill账单列表
 k alice不吃的那道菜的index
 b 最后alice支付的金额
 如果b == 实际金额，就打印Bon Appetit，否则打印Bille差alice多少钱
 
 */

// https://www.hackerrank.com/challenges/bon-appetit/problem?isFullScreen=true
struct _HackerRank_BonAppetit {
    
    func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
        
        var total = 0
        for i in 0..<bill.count {
            if i != k {
                total += bill[i]
            }
        }
        
        if total == b * 2 {
            print("Bon Appetit")
        } else {
            print(b - total/2)
        }

    }
}
