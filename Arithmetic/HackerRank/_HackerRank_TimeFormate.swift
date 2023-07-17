//
//  _HackerRank_TimeFormate.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/16.
//

import Foundation

struct _HackerRank_TimeFormate {
    
    func timeConversion(s: String) -> String {
        
        var str = s
        let isAM = s.hasSuffix("AM")
        
        let end = str.index(str.endIndex, offsetBy: -2)
        let range = str.startIndex..<end
        str = String(str[range])
        if isAM {
            if str.hasPrefix("12") {
                
                let sstart = str.index(str.startIndex, offsetBy: 2)
                let srange = sstart..<str.endIndex
                str = String(str[srange])
                str = "00".appending(str)
            }
        } else {
            if !str.hasPrefix("12") {
                // 12:00:00
                
                // 拿到前缀
                var prefix = str
                let pend = prefix.index(prefix.endIndex, offsetBy: -6)
                let prange = prefix.startIndex..<pend
                prefix = String(prefix[prange])
                let prefixStr = "\((prefix as NSString).integerValue + 12)"
                
                let sstart = str.index(str.startIndex, offsetBy: 2)
                let srange = sstart..<str.endIndex
                str = String(str[srange])
                str = prefixStr.appending(str)
            }
        }
        
        return str

    }
}

