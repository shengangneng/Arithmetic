//
//  _3_Alibaba.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 2,5,-1,8,6
// 【花费12分钟】
class _3_Alibaba {
    func test(_ input: String) -> Int {
        let array = input.split(separator: ",").compactMap { Int(String($0)) }
        
        for i in 0..<array.count {
            var lcount = 0
            var rcount = 0
            
            if i - 1 >= 0 {
                for j in 0...(i - 1) {
                    lcount += array[j]
                }
            }
            if i + 1 <= array.count - 1 {
                for j in (i + 1)...(array.count - 1) {
                    rcount += array[j]
                }
            }
            if lcount == rcount {
                return i
            }
        }
        
        return -1
    }
}
