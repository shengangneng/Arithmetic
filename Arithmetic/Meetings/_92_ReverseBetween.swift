//
//  _92_ReverseBetween.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/10.
//

import Foundation

// https://leetcode.cn/problems/reverse-linked-list-ii/description/
struct _92_ReverseBetween {
    
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        if head == nil { return nil }
        let res = ListNode()
        res.next = head

        var index = 1
        var pre: ListNode! = res
        var cur: ListNode! = head
        var second: ListNode? = nil
        var secondTail: ListNode? = nil
        while cur != nil {
            if index < left {
                pre = cur
                cur = cur.next
                index += 1
            } else if index >= left && index <= right {
                var next = cur.next
                cur.next = second
                if second == nil { secondTail = cur }
                second = cur
                cur = next
                index += 1
            } else {
                index += 1
                pre.next = second
                secondTail!.next = cur
                break
            }
        }
        if index - 1 <= right {
            pre.next = second
            secondTail!.next = cur
        }

        return res.next
    }
}
