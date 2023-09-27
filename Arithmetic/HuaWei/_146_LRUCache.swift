//
//  _146_LRUCache.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

// https://leetcode.cn/problems/lru-cache/?envType=daily-question&envId=2023-09-24
struct _146_LRUCache {
    // 最久没使用
    class LRUCache {

        private struct Page {
            var key: Int
            var value: Int
        }

        private var array: [Page]
        private var cap: Int
        init(_ capacity: Int) {
            array = [Page]()
            cap = capacity
        }
        
        func get(_ key: Int) -> Int {
            if array.count == 0 { return -1 }
            var value = -1
            for i in 0..<array.count {
                if array[i].key == key {
                    value = array[i].value
                    if i != 0 {
                        let page = array[i]
                        array.remove(at: i)
                        array.insert(page, at: 0)
                    }
                    break
                }
            }
            return value
        }
        
        // 插入
        func put(_ key: Int, _ value: Int) {
            var find = false
            for i in 0..<array.count {
                // 找到已经存在的，那么放到第一位
                if array[i].key == key {
                    array[i].value = value
                    if i != 0 {
                        let page = array[i]
                        array.remove(at: i)
                        array.insert(page, at: 0)
                    }
                    find = true
                    break
                }
            }
            // 未找到，需要新增
            if !find {
                if array.count == 0 {
                    array.append(Page(key: key, value: value))
                } else if array.count < cap {
                    array.insert(Page(key: key, value: value), at: 0)
                } else {
                    array.removeLast()
                    array.insert(Page(key: key, value: value), at: 0)
                }
            }
        }
    }
}
