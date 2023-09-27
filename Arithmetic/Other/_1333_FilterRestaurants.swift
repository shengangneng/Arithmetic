//
//  _1333_FilterRestaurants.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

// https://leetcode.cn/problems/filter-restaurants-by-vegan-friendly-price-and-distance/
class _1333_FilterRestaurants {
    func filterRestaurants(_ restaurants: [[Int]], _ veganFriendly: Int, _ maxPrice: Int, _ maxDistance: Int) -> [Int] {
        var res = [[Int]]()
        for i in 0..<restaurants.count {
            let rt = restaurants[i]
            if veganFriendly == 1 && rt[2] == 0 { continue }
            if rt[3] > maxPrice { continue }
            if rt[4] > maxDistance { continue }
            res.append(rt)
        }
        res = res.sorted { v1, v2 in
            if v1[1] == v2[1] {
                return v1[0] > v2[0]
            } else {
                return v1[1] > v2[1]
            }
        }
        var ans = [Int]()
        for rt in res {
            ans.append(rt[0])
        }
        return ans
    }
}
