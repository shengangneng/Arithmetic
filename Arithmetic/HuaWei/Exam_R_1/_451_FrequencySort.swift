//
//  _451_FrequencySort.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _451_FrequencySort {
    func frequencySort(_ s: String) -> String {
        var map = [Character:String]()
        for str in s {
            if map[str] == nil {
                map[str] = String(str)
            } else {
                map[str]! = "\(map[str]!)\(str)"
            }
        }

        // ["t":"t", "r":"r", "e":"eee"]
        var array = [String]()
        for (_, value) in map {
            array.append(value)
        }
        array = array.sorted { v1, v2 in
            v1.count > v2.count
        }
        var res = ""
        for str in array {
            res.append(str)
        }
        return res
    }
}
