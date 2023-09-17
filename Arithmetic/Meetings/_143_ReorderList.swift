//
//  _143_ReorderList.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/11.
//

import Foundation

// https://leetcode.cn/problems/reorder-list/
struct _143_ReorderList {
    
    func reorderList(_ head: ListNode?) {
        if head == nil || head!.next == nil { return }
        var head: ListNode? = head
        var dummy = ListNode()
        dummy.next = head
        // 找到前半条、后半条
        var slow: ListNode? = dummy
        var fast: ListNode? = dummy
        while fast != nil {
            slow = slow!.next
            fast = fast!.next
            if fast != nil {
                fast = fast!.next
            }
        }
        fast = slow!.next    // 后半条
        slow!.next = nil     // 前半条

        // 后半条反转
        var pre: ListNode! = nil
        while fast != nil {
            let next = fast!.next
            fast!.next = pre
            pre = fast
            fast = next
        }
        var second = pre

        // 前半条、后半条开始拼凑
        // head就是前半条
        while head != nil && second != nil {
            let next = head!.next
            let secondNext = second!.next
            head!.next = second
            second!.next = next
            second = secondNext
            head = next
        }
    }
}
