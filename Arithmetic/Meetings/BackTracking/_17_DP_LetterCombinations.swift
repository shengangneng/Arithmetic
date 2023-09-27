//
//  _17_DP_LetterCombinations.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/25.
//

import Foundation

class _17_DP_LetterCombinations {
    var res = [String]()
    var path = ""
    let map: [Character:String] = ["2":"abc", "3":"def", "4":"ghi", "5":"jkl", "6":"mno", "7":"pqrs", "8":"tuv", "9":"wxyz"]
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 { return [] }
        var chars = Array(digits)
        dfs(&chars, 0)
        return res
    }

    func dfs(_ chars: inout [Character], _ index: Int) {
        if path.count == chars.count {
            res.append(path)
            return
        }

        let digit: Character = chars[index]
        let letters = map[digit]
        guard let letters = letters else { return }
        for letter in letters {
            path.append(letter)
            dfs(&chars, index + 1)
            path.removeLast()
        }
    }
}
