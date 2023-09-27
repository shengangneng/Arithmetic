//
//  _2469_ConvertTemperature.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// https://leetcode.cn/problems/convert-the-temperature/
class _2469_ConvertTemperature {
    func convertTemperature(_ celsius: Double) -> [Double] {
        return [celsius + 273.15, celsius * 1.80 + 32.00]
    }
}
