//
//  _2816_DoubleIt.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/29.
//

import Foundation

// https://leetcode.cn/problems/double-a-number-represented-as-a-linked-list/submissions/470332802/
class _2816_DoubleIt {
    
    func doubleIt(_ head: ListNode?) -> ListNode? {
        if head == nil { return nil }
        var head = head
        let dummy = ListNode(-1)
        dummy.next = head
        
        var pre: ListNode! = dummy
        while head != nil {
            if head!.val << 1 >= 10 {
                if pre.val == -1 {
                    // 需要插入一个节点
                    var insert = ListNode(1)
                    dummy.next = insert
                    insert.next = head
                } else {
                    pre.val += 1
                }
                head!.val = head!.val << 1 - 10
            } else {
                head!.val = head!.val << 1
            }
            pre = head
            head = head!.next
        }
        
        return dummy.next
    }
}
