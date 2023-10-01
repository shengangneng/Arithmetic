//
//  _752_OpenLock.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/23.
//

import Foundation

struct _752_OpenLock {
    
    func openLock(_ deadends: [String], _ target: String) -> Int {
        guard !deadends.contains("0000") else { return -1 }
        guard target != "0000" else { return 0 }
        
        var queue: [String] = ["0000"]  //初始化队列 存储待分析的
        var visited: Set = ["0000"]     //初始化队列 储存访问过的
        let deadends: Set = Set(deadends)
        var steps: Int = 0  //拨轮的旋转次数
        
        while !queue.isEmpty {
            steps += 1
            let count = queue.count
            for _ in 0..<count {
                let curr: String = queue.removeFirst()
                for (index, char) in curr.enumerated() {    // 遍历每个数字
                    let currNumber: Int = Int(String(char))!
                    let startIndex = curr.index(curr.startIndex, offsetBy: index)   //要拨动的数字反映在字符串中的范围
                    let endIndex = startIndex
                    
                    // 向上拨
                    let upNumber: String = String((currNumber + 1) % 10)
                    var upString: String = curr
                    upString.replaceSubrange(startIndex...endIndex, with: upNumber)
                    if upString == target {
                        // 如果可以解锁，则返回当前旋转次数
                        return steps
                    } else if !deadends.contains(upString) && !visited.contains(upString) {
                        // 如果不能解锁，则在确认‘当前不是死亡数字’且‘没有访问过’后加入队列
                        queue.append(upString)
                        visited.insert(upString)
                    }
                    
                    // 向下拨
                    let downNumber: String = String((currNumber - 1 >= 0 ? currNumber - 1 : 9 ))
                    var downString: String = curr
                    downString.replaceSubrange(startIndex...endIndex, with: downNumber)
                    
                    if downString == target {
                        return steps
                    } else if !deadends.contains(downString) && !visited.contains(downString) {
                        queue.append(downString)
                        visited.insert(downString)
                    }
                }
            }
        }
        return -1
    }
}
