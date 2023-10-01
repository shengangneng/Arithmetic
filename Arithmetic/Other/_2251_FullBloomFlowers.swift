//
//  _2251_FullBloomFlowers.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/28.
//

import Foundation

class _2251_FullBloomFlowers {
    func fullBloomFlowers(_ flowers: [[Int]], _ people: [Int]) -> [Int] {
        var people = people
        // 先用一个哈希表保存所有点开花的时刻+1和凋谢-1的时刻，
        // 注意这里的凋谢在记录时要在key上+1
        var map = [Int:Int]()
        for flower in flowers {
            if map[flower[0]] == nil {
                map[flower[0]] = 1
            } else {
                map[flower[0]]! += 1
            }

            if map[flower[1] + 1] == nil {
                map[flower[1] + 1] = -1
            } else {
                map[flower[1] + 1]! -= 1
            }
        }
        // 然后对这些key用一个数组times保存，并从小到大排序好
        let times = Array(map.keys).sorted()
        // 然后在多一个persons的ids数组，对这个ids数组按照persons从小到大的顺序进行排序
        var ids = Array(repeating: 0, count: people.count)
        for i in 0..<people.count {
            ids[i] = i
        }
        // 对这个ids数组按照persons从小到大的顺序进行排序
        ids = ids.sorted { v1, v2 in
            people[v1] < people[v2]
        }
        
        // 遍历ids，在遍历的时候也对times遍历，如果times中的key小于等于这个人到达的时刻，
        // 则加上这个key对应的花数，当key遍历完或大于这个人到达的时刻时，
        // 就把他看到的花的数量赋值给这个人，最后返回结果
        var sum = 0
        var i = 0
        for index in ids {
            while i < times.count && times[i] <= people[index] {
                sum += map[times[i]]!
                i += 1
            }
            people[index] = sum
        }
        return people
    }
}
