//
//  _25_ReverseKGroup.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/10.
//

import Foundation

struct _25_ReverseKGroup {
    
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        if k <= 1 { return head }

        // 计算链表长度
        var count = 0
        var tmp = head
        while tmp != nil {
            count += 1
            tmp = tmp!.next
        }

        var restCount = count   // 记录剩余未处理数量
        var dealCount = 0       // 记录已处理的数量(0..<k)
        let res: ListNode? = ListNode()
        res!.next = head
        var cur: ListNode! = head
        var pre: ListNode! = res
        var secondTail: ListNode? = nil
        var second: ListNode? = nil
        while cur != nil {
            if dealCount == 0 && restCount < k {  // 已经剩余不足k个
                break
            } else {
                if dealCount < k {
                    let next = cur.next
                    cur.next = second
                    second = cur
                    if secondTail == nil { secondTail = second }
                    cur = next
                    dealCount += 1
                    restCount -= 1
                } else {
                    pre.next = second
                    secondTail!.next = cur
                    pre = secondTail
                    second = nil
                    secondTail = nil
                    dealCount = 0
                }
            }
        }
        if dealCount != 0 {
            pre.next = second
            secondTail!.next = cur
        }

        return res!.next
    }
}
