//
//  _641_MyCircleQueue.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

class MyCircularDeque {
    
    private var queue: [Int]
    private var capacity = 0
    init(_ k: Int) {
        queue = [Int]()
        capacity = k
    }
    
    func insertFront(_ value: Int) -> Bool {
        if queue.isEmpty {
            queue.append(value)
        } else if queue.count >= capacity {
            return false
        } else {
            queue.insert(value, at: 0)
        }
        return true
    }
    
    func insertLast(_ value: Int) -> Bool {
        if queue.count >= capacity {
            return false
        }
        queue.append(value)
        return true
    }
    
    func deleteFront() -> Bool {
        if queue.isEmpty { return false }
        queue.removeFirst()
        return true
    }
    
    func deleteLast() -> Bool {
        if queue.isEmpty { return false }
        queue.removeLast()
        return true
    }
    
    func getFront() -> Int {
        if queue.isEmpty { return -1 }
        return queue.first!
    }
    
    func getRear() -> Int {
        if queue.isEmpty { return -1 }
        return queue.last!
    }
    
    func isEmpty() -> Bool {
        return queue.isEmpty
    }
    
    func isFull() -> Bool {
        return queue.count == capacity
    }
}
