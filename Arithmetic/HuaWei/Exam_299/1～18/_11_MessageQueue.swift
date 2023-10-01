//
//  _11_MessageQueue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation
/*
 输入
 2 22 1 11 4 44 5 55 3 33   // 消息11在1时刻到达，消息55在5时刻到达
 1 7 2 3                    // 订阅者，订阅者1能收到1～6的消息，订阅者2能收到2的消息
 输出
 11 33 44 55    // 第一个消费者收到的消息
 22             // 第二个消费者收到的消息
 
 例子2
 输入
 5 64 11 64 9 97            // 消息
 9 11 4 9                   // 订阅者，订阅者1能收到9～10的消息，订阅者2能收到4～8的消息
 输出
 97                 // 只能收到9、10的消息
 64                 // 只能收到
 
 let res = _11_MessageQueue().test("2 22 1 11 4 44 5 55 3 33", "1 7 2 3")
 let res1 = _11_MessageQueue().test("5 64 11 64 9 97", "9 11 4 9")
 
 【40分钟】
 */
class _11_MessageQueue {
    func test(_ input:String, _ subscirber: String) {
        var msgs = [[Int]]()
        let temp1 = input.split(separator: " ").compactMap { Int(String($0)) }
        for i in 0..<(temp1.count >> 1) {
            let index = i * 2
            let key = temp1[index]
            let value = temp1[index + 1]
            msgs.append([key, value])
        }
        msgs = msgs.sorted { v1, v2 in
            v1[0] < v2[0]
        }
//        print(msgs)
        
        var subs = [(Int, Int)]()
        let temp2 = subscirber.split(separator: " ").compactMap { Int(String($0)) }
        for i in 0..<(temp2.count >> 1) {
            let index = i * 2
            let start = temp2[index]
            let end = temp2[index + 1] - 1
            subs.append((start, end))
        }
        
        var res = [String]()
        for (start, end) in subs.reversed() {
            var str = ""
            var remove = [Int]()
            for i in 0..<msgs.count {
                let item = msgs[i]
                if item[0] >= start && item[0] <= end {
                    if str.count == 0 {
                        str.append("\(item[1])")
                    } else {
                        str.append(" \(item[1])")
                    }
                    remove.append(i)
                }
            }
            if remove.count > 0 {
                // 大index到小index开始删除
                for i in remove.reversed() {
                    msgs.remove(at: i)
                }
            }
            if str.count > 0 {
                if res.count == 0 {
                    res.append(str)
                } else {
                    res.insert(str, at: 0)
                }
            }
        }
        for str in res {
            print(str)
        }
        
    }
}
