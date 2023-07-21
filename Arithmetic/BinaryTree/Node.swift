//
//  Node.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/21.
//

import Foundation

public class Node {
    public var val: Int
    public var children: [Node]
    public init(_ val: Int) {
        self.val = val
        self.children = []
    }
}
