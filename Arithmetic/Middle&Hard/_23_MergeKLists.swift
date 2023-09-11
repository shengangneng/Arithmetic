//
//  _23_MergeKLists.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/10.
//

import Foundation

// https://leetcode.cn/problems/merge-k-sorted-lists/
struct _23_MergeKLists {
    
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        if lists.count == 0 { return nil }
        if lists.count == 1 { return lists.first! }

        let res = ListNode()
        var node: ListNode! = res

        var arrs = [[Int]]()
        var indexs = Array(repeating:0, count: lists.count)
        var count = 0
        for var list in lists {
            var arr = [Int]()
            while list != nil {
                arr.append(list!.val)
                list = list!.next
            }
            count += arr.count
            arrs.append(arr)
        }

        for _ in 0..<count {
            var minVal = Int.min
            var selectedIndex = 0
            for i in 0..<arrs.count {
                let arr = arrs[i]
                let index = indexs[i]
                if index > arr.count - 1 { continue }

                if minVal == Int.min {
                    minVal = arr[index]
                    selectedIndex = i
                } else {
                    if arr[index] < minVal {
                        minVal = arr[index]
                        selectedIndex = i
                    }
                }
            }
            indexs[selectedIndex] += 1
            node.next = ListNode(minVal)
            node = node.next
        }
        return res.next
    }
}
