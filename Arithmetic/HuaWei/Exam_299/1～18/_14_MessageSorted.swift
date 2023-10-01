//
//  _14_MessageSorted.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 输入:
 A
 rolling3 stone4 like1 a2
 输出:
 like a rollingQ stone
 说明:4个子报文的内容分别为roling.stone like,a，顺序值分别为3，4，1，2，按照顺序值升序并删除掉顺序后缀得到恢复的原始报文: likea rolling stone
 用例2
 输入:
 8
 Lqifts6 and7 Exchanging1 all2 precious5 things8 kinds3 of43//注: 这里需要注意:and7与Exchanging1有两个空格输出:
 Exchanging all kinds of precious gifts and thin
 
 【15分钟】
 
 */
class _14_MessageSorted {
    func test(_ n: Int, _ input: String) {
        let strs = input.split(separator: " ").filter { $0.count > 0 }.compactMap { String($0) }
        var array = Array(repeating: "", count: n)
        for str in strs {
            let beginIndex = str.startIndex
            let endIndex = str.endIndex
            let minIndex = str.index(endIndex, offsetBy: -1)
            let cur = str[beginIndex..<minIndex]
            let num = str[minIndex..<endIndex]
            array[Int(String(num))! - 1] = String(cur)
        }
        var res = ""
        for str in array {
            if res.count == 0 {
                res.append("\(str)")
            } else {
                res.append(" \(str)")
            }
        }
        print(res)
    }
}
