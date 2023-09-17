//
//  ViewController.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/7/15.
//

import UIKit

class ViewController: UIViewController {
    
    static let arr: [Int] = [3,45,56567,7,87,8,9,8909,234,9,4566,788,9902,44,3324,4,2324,2,2,234,345,34,645,765,208]
    
    let mArr = ViewController.arr

    override func viewDidLoad() {
        super.viewDidLoad()
//        print(BubbleSort.sort(arr: mArr))
//        print(SelectSort.sort(arr: mArr))
//        print(InsertSort.sort(arr: mArr))
//        print(ShellShort.sort(arr: mArr))
//        print(QuickSort.sort(arr: mArr))
        
//        var nums1: [Int] = [2,0]
//        let nums2: [Int] = [1]
//        _88_CombineSortedArray().merge(&nums1, 1, nums2, 1)
        
//        _922_SortByParity2().sortArrayByParityII([4,2,5,7])
//        _HackerRank_打印().staircase(n: 6)
//        _HackerRank_TimeFormate().timeConversion(s: "12:05:45AM")
//        _202_HappyNumber().isHappy(3)
//        _1499_Hard_FindMaxOfEquation.findMaxValueOfEquation([[-15,-1],[-14,-5],[-11,1],[-9,7],[-8,18],[-7,-5],[-3,3],[4,14],[12,-4],[13,15],[14,-19],[19,-1]], 8)
//        var nums = [-2,1,-3,4,-1,2,1,-5,4]
//        var nums = [1,2,3,4,5,-10,2,3,4,2]
//        var nums = [10, 15, 20]
//        _Offer42_MaxSubArray().maxSubArray(nums)
//        _746_MinCostClimbingStairs().minCostClimbingStairs(nums)
//        _62_UniquePaths().uniquePaths(3, 2)
//        _63_UniquePathsWithObstacles().uniquePathsWithObstacles([[0,1],[1,0]])
//        _343_IntegerBreak().integerBreak(2)
//        _96_NumTrees().numTrees(3)
//        _96_NumTrees().numTrees(4)
//        _Pakage_01_OneDimensial().testWeightBagProblem([1,3,4], [15,20,30], 4)
//        _416_CanPartition().canPartition([1,2,5])
//        _474_FindMaxForm().findMaxForm(["10", "0001", "111001", "1", "0"], 5, 3)
//        _474_FindMaxForm().findMaxForm(["10", "0", "1"], 1, 1)
//        let queue = MyQueue()
//        queue.push(1)
//        queue.push(2)
//        print(queue.peek())
//        print(queue.pop())
//        print(queue.empty())
//        print(queue.empty())
        
//        var head = ListNode(1)
//        head.next = ListNode(2)
//        head.next?.next = ListNode(3)
//        head.next?.next?.next = ListNode(4)
//        head.next?.next?.next?.next = ListNode(5)
//        head.next?.next?.next?.next?.next = ListNode(6)
//        head.next?.next?.next?.next?.next?.next = ListNode(7)
//        head.next?.next?.next?.next?.next?.next?.next = ListNode(8)
//        _328_OddEvenList().oddEvenList(head)
        
//        var c: [Character] = ["H","a","n","n","a","h"]
//        _344_ReverseString().reverseString(&c)
        
//        _1_TwoSum().twoSum([3,2,4], 6)
//        TenSort().mergeSort1(arr: ViewController.arr)
        
//        var head = ListNode(1)
//        head.next = ListNode(4)
//        head.next?.next = ListNode(5)
//
//        var head2 = ListNode(1)
//        head2.next = ListNode(3)
//        head2.next?.next = ListNode(4)
//
//        var head3 = ListNode(2)
//        head3.next = ListNode(6)
//
//        _23_MergeKLists().mergeKLists([head, head2, head3])
        
        
//        var head = ListNode(1)
//        head.next = ListNode(2)
//        head.next?.next = ListNode(3)
//        head.next?.next?.next = ListNode(4)
//        head.next?.next?.next?.next = ListNode(5)
        
//        _87_Partition().partition(head, 3)
//        _25_ReverseKGroup().reverseKGroup(head, 2)
        
//        _198_Rob().rob([2, 7, 9, 3, 1])
//        _213_Rob().rob([1,1,3,6,7,10,7,1,8,5,9,1,4,4,3])
//        _KusiShou_01().sumIndicesWithKSetBits([5,10,1,5,2], 1)
//        _KusiShou_01().sumIndicesWithKSetBits([4,3,2,1], 2)
        
        let res = _2334_ValidSubarraySize().validSubarraySize([818,232,595,418,608,229,37,330,876,774,931,939,479,884,354,328], 3790)
        print(res)
    }


}

