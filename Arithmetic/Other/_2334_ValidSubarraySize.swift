//
//  _2334_ValidSubarraySize.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/17.
//

import Foundation
// 由于区间内所有数字都需要满足nums[i] > thres / k，等价于最小值满足上述的情况
// 因此我们只需要去寻找每个元素作为最小值的最大跨度即可，而这个可以通过单调栈进行高效求解。
// https://leetcode.cn/problems/subarray-with-elements-greater-than-varying-threshold/
struct _2334_ValidSubarraySize {
    
    // TODO: 看不懂
     func validSubarraySize(_ nums: [Int], _ threshold: Int) -> Int {
         var stack = [Int]()
         stack.append(-1)
         let count = nums.count
         for i in 0...count {
             while stack.count > 1 && (i == count || nums[stack.last!] >= nums[i]) {
                 let item = stack.removeLast()
                 let w = i - stack.last! - 1
                 let h = nums[item]
                 if (w * h > threshold) {
                     return w
                 }
             }
             stack.append(i)
         }
         return -1
     }
    
    
    // version4 : 左右开弓，更差了
//    func validSubarraySize(_ nums: [Int], _ threshold: Int) -> Int {
//        if nums.count > threshold { return nums.count }
//
//        let maxVal = max(nums.count, threshold)
//
//        for i in 2...maxVal {
//
//            var larrcount = 0
//            var larrpre: Int? = nil
//            var rarrcount = 0
//            var rarrpre: Int? = nil
//            // 左右同时开始找
//            var l = 0
//            var r = nums.count - 1
//            while l <= r {
//                let left = nums[l]
//                let right = nums[r]
//                if left > threshold || right > threshold { return 1 }
//
//                if larrcount + rarrcount + (r - l) < i { break }
//
//                let target = threshold / i
//                let count = i
//
//                if l == r {
//                    if left > target {
//                        if larrcount + rarrcount + 1 >= count {
//                            return count
//                        }
//                    }
//                    l += 1
//                    r -= 1
//                    continue
//                }
//
//                // 左边往右走
//                if left > target {
//                    let pre = larrpre
//                    if pre == nil {
//                        larrpre = left
//                        larrcount += 1
//                    } else if pre! > target {
//                        if larrcount >= count - 1 {
//                            return count
//                        } else {
//                            larrpre = left
//                            larrcount += 1
//                        }
//                    } else {
//                        larrcount = 0
//                        larrpre = nil
//                    }
//                } else {
//                    larrcount = 0
//                    larrpre = nil
//                }
//
//                // 右边往左走
//                if right > target {
//                    let pre = rarrpre
//                    if pre == nil {
//                        rarrpre = right
//                        rarrcount += 1
//                    } else if pre! > target {
//                        if rarrcount >= count - 1 {
//                            return count
//                        } else {
//                            rarrpre = right
//                            rarrcount += 1
//                        }
//                    } else {
//                        rarrcount = 0
//                        rarrpre = nil
//                    }
//                } else {
//                    rarrcount = 0
//                    rarrpre = nil
//                }
//
//
//                l += 1
//                r -= 1
//            }
//        }
//        return -1
//    }

    // version3 : 用两个变量代替数组。还是超时啊
//     func validSubarraySize(_ nums: [Int], _ threshold: Int) -> Int {
//         if nums.count > threshold { return nums.count }
//
//         let maxVal = max(nums.count, threshold)
//
//         for i in 2...maxVal {
//             var arrcount = 0
//             var arrPre: Int? = nil
//             for j in 0..<nums.count {
//                 let num = nums[j]
//                 if num > threshold { return 1 }
//                 if arrcount + (nums.count - j - 1) < i { break }
//                 let target = threshold / i
//                 let count = i
//                 if num > target {
//                     let pre = arrPre
//                     if pre == nil {
//                         arrPre = num
//                         arrcount += 1
//                     } else if pre! > target {
//                         if arrcount >= count - 1 {
//                             return count
//                         } else {
//                             arrPre = num
//                             arrcount += 1
//                         }
//                     } else {
//                         arrcount = 0
//                         arrPre = nil
//                     }
//                 } else {
//                     arrcount = 0
//                     arrPre = nil
//                 }
//             }
//         }
//         return -1
//     }

    // version2 : version1超时的用例过来，但是后面的用例还是超时了
    // func validSubarraySize(_ nums: [Int], _ threshold: Int) -> Int {
    //     if nums.count > threshold { return nums.count }

    //     let maxVal = max(nums.count, threshold)
        
    //     for i in 2...maxVal {
    //         var arr = [Int]()
    //         for j in 0..<nums.count {
    //             let num = nums[j]
    //             if num > threshold { return 1 }
    //             if arr.count + (nums.count - j - 1) < i { break }
    //             let target = threshold / i
    //             let count = i
    //             if num > threshold / count {
    //                 let pre = arr.last
    //                 if pre == nil {
    //                     arr.append(num)
    //                 } else if pre! > target {
    //                     if arr.count >= count - 1 {
    //                         return count
    //                     } else {
    //                         arr.append(num)
    //                     }
    //                 } else {
    //                     arr.removeAll()
    //                 }
    //             } else {
    //                 arr.removeAll()
    //             }
    //         }
    //     }
    //     return -1
    // }


    // version1 : 超时了，解答应该是对的，要想想怎么优化
    // func validSubarraySize(_ nums: [Int], _ threshold: Int) -> Int {
    //     // 如果是1个元素，那么只要找到比 threshold 大的一个元素就行
    //     // 如果是2个元素，那么找到“连续”比 threshold / 2 大的2个元素就行
    //     if nums.count > threshold { return nums.count }

    //     let maxVal = max(nums.count, threshold)
    //     var map = [Int:[Int]]()
    //     for i in 2...maxVal {
    //         var arr = [Int]()
    //         map[i] = arr
    //     }
    //     for num in nums {
    //         if num > threshold { return 1 }
    //         for i in 2...maxVal {
    //             let target = threshold / i
    //             let count = i
    //             if num > threshold / count {
    //                 let pre = map[i]!.last
    //                 if pre == nil {
    //                     map[i]!.append(num)
    //                 } else if pre! > target {
    //                     if map[i]!.count >= count - 1 {
    //                         return count
    //                     } else {
    //                         map[i]!.append(num)
    //                     }
    //                 } else {
    //                     map[i]!.removeAll()
    //                 }
    //             } else {
    //                 map[i]!.removeAll()
    //             }
    //         }
    //     }
    //     return -1
    // }
}
