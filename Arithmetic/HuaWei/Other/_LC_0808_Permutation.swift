//
//  File.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/21.
//

import Foundation

// https://leetcode.cn/problems/permutation-ii-lcci/
struct _LC_0808_Permutation {
  
    func permutation(_ S: String) -> [String] {
        var set = Set<String>()
        var array = Array(S);
        var temp = [Character]()
        dfs(&array, &temp, &set)
        // set中的结果直接转数组
        return Array(set)
    }
 
    func dfs(_ array:inout [Character], _ temp:inout [Character], _ set: inout Set<String>) {
        if temp.count == array.count {
            set.insert(String(temp));
            return
        }
    
        for i in 0..<array.count {
            let key = array[i]
            if key != " " {
                temp.append(key)
                array[i] = " "
                dfs(&array, &temp, &set)
                temp.removeLast()
                array[i] = key
            }
        }
    }
}
