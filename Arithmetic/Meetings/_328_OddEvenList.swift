//
//  _328_OddEvenList.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/8.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

struct _328_OddEvenList {
    
    func oddEvenList(_ head: ListNode?) -> ListNode? {
        if head == nil || head!.next == nil || head!.next!.next == nil { return head }
        let secondHead = ListNode()

        var first: ListNode! = head
        var second: ListNode! = secondHead

        while first.next != nil {
            if let next = first.next {
                second.next = next
                first.next = first.next!.next
                next.next = nil
                second = next
                if first.next != nil {
                    first = first.next
                }
            }
        }
        first.next = secondHead.next
        return head
    }
}
