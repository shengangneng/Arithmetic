//
//  _732_MyCalendarThree.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/20.
//

import Foundation

class MyCalendarThree {
    
    var times: [[Int]]
    var preCount = 1
    init() {
        times = [[Int]]()
    }
    
    func book(_ startTime: Int, _ endTime: Int) -> Int {
        // 0-----10-----20-----30-----40-----50-----60
        //       10---------25                              // 1
        //                                   50-----60      // 1
        //       10----------------35                       // 2
        //       10-----20                                  // 3
        //       10--15                                     // 3
        //                            40--45            // 3

        var contains = false
        for time in self.times {
            if !(startTime > time[1] || endTime < time[0]) {
                if startTime >= time[0] && endTime <= time[1] {
                    contains = false
                    break
                }
                contains = true
            }
        }
        if contains { preCount += 1 }
        self.times.append([startTime, endTime])
        return preCount
    }
}
