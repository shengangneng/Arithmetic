//
//  _2136_EarliestFullBloom.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/30.
//

import Foundation

class _2136_EarliestFullBloom {
    
    private class Flower {
        var plant: Int
        var grow: Int
        init(plant: Int, grow: Int) {
            self.plant = plant
            self.grow = grow
        }
    }
    func earliestFullBloom(_ plantTime: [Int], _ growTime: [Int]) -> Int {
        var flow = [Flower]()
        for i in 0..<plantTime.count {
            let flower = Flower(plant: plantTime[i], grow: growTime[i])
            flow.append(flower)
        }
        flow = flow.sorted { v1, v2 in
            return v1.grow > v2.grow
        }
        
        var res = 0
        var pre = 0
        for i in 0..<flow.count {
            let flower = flow[i]
            res = max(res, pre + flower.plant + flower.grow)
            pre += flower.plant
        }
        
        return res
    }
}
