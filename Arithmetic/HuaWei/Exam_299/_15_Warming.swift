//
//  _13_Warming.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 指高优先级告警抑制低优先级告警的规则，高优先级告警产生后，低优先级告警不再产生。
 不会循环抑制、不会产生传递，比如A->B,B->C，A不会直接抑制C
 
 输入：
 2
 A B        // A抑制B
 B C        // B抑制C
 ...        // 可能有多行抑制关系
 A B C D E  // 告警列表
 输出
 ADE
 说明
 A抑制了B，B抑制了C，最后实际的告警为A D E
 
 let res = _15_Warming().test(["A B", "B C"], "A B C D E")
 
 【20分钟】
 
 */
class _13_Warming {
    func test(_ input: [String], _ warm: String) {
        var maparr = [String:String]()
        for str in input {
            let arr = str.split(separator: " ")
            maparr[String(arr[0])] = String(arr[1])
        }
        
        var warmarr = warm.split(separator: " ")
        
        var remove = [Int]()
        for i in 0..<(warmarr.count - 1) {
            let item = String(warmarr[i])
            let next = String(warmarr[i + 1])
            if maparr[item] == next {
                remove.append(i + 1)
            }
        }
        for i in remove.reversed() {
            warmarr.remove(at: i)
        }
        
        var res = ""
        for value in warmarr {
            if res.count == 0 {
                res.append("\(value)")
            } else {
                res.append(" \(value)")
            }
        }
        print(res)
    }
}
