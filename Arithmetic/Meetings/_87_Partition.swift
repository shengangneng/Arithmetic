//
//  _87_Partition.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/10.
//

import Foundation

struct _87_Partition {
    
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        if head == nil || head!.next == nil { return head }
        let resOne = ListNode()
        let res = resOne
        let resTwo = ListNode()

        var one: ListNode! = resOne
        var two: ListNode! = resTwo
        var head: ListNode! = head
        while head != nil {
            if head.val < x {
                one.next = head
                one = one.next
                head = head.next
                one.next = nil
            } else {
                two.next = head
                two = two.next
                head = head.next
                two.next = nil
            }
        }
        one.next = resTwo.next
        return res.next
    }
}
