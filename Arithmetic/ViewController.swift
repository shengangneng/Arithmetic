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
        
//        let res = _2334_ValidSubarraySize().validSubarraySize([818,232,595,418,608,229,37,330,876,774,931,939,479,884,354,328], 3790)
        
//        let res = _891_SumSubseqWidths().sumSubseqWidths([2,1,3])
        
//        let res = _60_GetPermutation().getPermutation(4, 9)
//        let res = _51_SolveNQueens().solveNQueens(4)
        
        
//        let res = _30_FindSubstring().findSubstring("aaaaaaaaaaa", ["a","a","a","a","a"])
//        let res = _30_FindSubstring().findSubstring("abababab", ["ab","ab","ab"])
        //        print(res)
        
//        let my = MyCalendarThree()
//        print(my.book(10, 20))
//        print(my.book(50, 60))
//        print(my.book(10, 40))
//        print(my.book(5, 15))
//        print(my.book(5, 10))
//        print(my.book(25, 55))
        
//        let circularDeque = MyCircularDeque(3)
//        print(circularDeque.insertLast(1));                    // 返回 true
//        print(circularDeque.insertLast(2));                    // 返回 true
//        print(circularDeque.insertFront(3));                    // 返回 true
//        print(circularDeque.insertFront(4));                    // 已经满了，返回 false
//        print(circularDeque.getRear());                        // 返回 2
//        print(circularDeque.isFull());                         // 返回 true
//        print(circularDeque.deleteLast());                     // 返回 true
//        print(circularDeque.insertFront(4));                    // 返回 true
//        print(circularDeque.getFront());                // 返回 4
        
//        let res = _406_ReconstructQueue().reconstructQueue([[7,0],[4,4],[7,1],[5,0],[6,1],[5,2]])
//        let res = _406_ReconstructQueue().reconstructQueue([[9,0],[7,0],[1,9],[3,0],[2,7],[5,3],[6,0],[3,4],[6,2],[5,2]])
//        print(res)
        
//        _HJ_17_CalLocation().printInput("A10;S20;W10;D30;X;A1A;B10A11;;A10;")
//        _HJ_20_PassValidation().test("021Abc9000")
//        _HJ_20_PassValidation().test("021Abc9Abc1")
//        _HJ_20_PassValidation().test("021ABC9000")
//        _HJ_20_PassValidation().test("021$bc9000")
//        _HJ_23_DeleteMinStr().test("aabcddd")
//        _HJ_33_ConvertIP().test("10.0.3.193", "167969729")
        
//        _HJ_52_Levenshtein().levenshtein("ucyfsmg", "zuixhuhyjgksyhqkjqxwylkoubykjxtcvkyqjpzgltbemmbmqibxxqpkgbvwbmjotixanvciibubglizmumcrjavakiygyuv")
        
//        let res = _LC_0808_Permutation().permutation("eqq")
//        print(res)
        
//        _HJ_60_IsSuClosed().test("20")
        
//        _944_OrangesRotting().orangesRotting([[2,1,1],[0,1,1],[1,0,1]])
        
//        _204_isZhiNum().countPrimes(10)
//        _1129_ShortestAlternatingPaths().shortestAlternatingPaths(3, [[0,1],[1,2]], [[2,1]])
//        let res = _1927_SumGame().sumGame("?8??799?5276")
//        print(res)
        
        
//        _HJ_24_HeChangeTuan().test("8", "186 186 150 200 160 130 197 200")
//        _HJ_61_PlaceApple().placeApple("7 3")
//        _Zhou_OneMax().maximumOddBinaryNumber("010")
//        let res = _Zhou_10049_BultyTower2().maximumSumOfHeights([9,3,8,6,5,1,6,2,10])
//        let res = _4_FindMiddle().findMedianSortedArrays([1,3], [2])

//        let res = _HJ_26_RankString().test("A Famous Saying: Much Ado About Nothing (2012/8).")
//        let res = _HJ_28_IsSuCompanion().test("4", "2 5 6 13")
        
//        let res = _547_FindCircleNum().findCircleNum([[1,0,0],[0,1,0],[0,0,1]])
//        let res = _39_DP_CombinationSum().combinationSum([2,3,6,7], 7)
//        let res = _131_DP_Partition().partition("aab")
//        let res = _132_DP_MinCut().minCut("ababababababababababababcbabababababababababababa")
//        let res = _93_DP_RestoreIpAddresses().restoreIpAddresses("25525511135")
//        let res = _605_CanPlaceFlowers().canPlaceFlowers([0,0,0,0,0,0,1,0,0,0,0,0], 5)
//        let res = _914_HasGroupsSizeX().hasGroupsSizeX([1,1,1,1,2,2,2,2,2,2])
//        let res = _14_HJ_LongestCommonPrefix().longestCommonPrefix(["ab", "a"])
//        let res = _119_LongestConsecutive().longestConsecutive([100,4,200,1,3,2])
//        let res = _451_FrequencySort().frequencySort("tree")
//        let res = _1_Exam_Planet().test(["YES YES NO", "NA NO NO", "NO NA YES"])
        /*
            0 1 0 0
            0 1 0 0
            0 0 0 0 7
         
             1 1 0 0
             0 1 0 0
             0 0 0 0 7
         
             0 1 1 0
             0 1 0 0
             0 0 0 0 8
         */
//        let res0 = _2_MonitorCount().test(3, 3, ["0 0 0", "0 1 0", "0 0 0"])
//        let res = _2_MonitorCount().test(3, 4, ["0 1 0 0", "0 1 0 0", "0 0 0 0"])
//        let res1 = _2_MonitorCount().test(3, 4, ["1 1 0 0", "0 1 0 0", "0 0 0 0"])
//        let res2 = _2_MonitorCount().test(3, 4, ["0 1 1 0", "0 1 0 0", "0 0 0 0"])
//        let res = _3_AlibabaFindGold_1().test("2,5,-1,8,6,4,65,76,6,78,3,34,23,23,423,42,124,21,32,42,4,23,42,34,23,4,2,2,234,2,34,32,4,23,53,89,09,8,76,6,45,64,45,32,42,212,12,42,4,32")
//        let res1 = _3_AlibabaFindGold_1().test("8,9")
        
        //
//        let res = _4_OptionalClass().test("01202021,75;01201033,95;01202008,80;01203006,90;01203088,100", "01202008,70;01203088,85;01202111,80;01202021,75;01201100,88")
//
//        // NULL
//        let res1 = _4_OptionalClass().test("01201022,75;01202033,95;01202018,80;01203006,90;01202066,100", "01202008,70;01203102,85;01202111,80;01201021,75;01201100,88")
        
//        let res = _5_FiveInFive().test(1, [-1,0,1,1,1,0,1,0,1,-1,1])
//        print("")
//        let res1 = _5_FiveInFive().test(-1, [-1,0,1,1,1,0,1,0,1,-1,1])
        
//        let res = _6_DeputationCar().test("5,4,2,3,2,4,9", "10")
//        let res = _8_RestrandFood().test("14", "10 4 5")
//        let res1 = _8_RestrandFood().test("3", "10 4 5")
//        let res2 = _8_RestrandFood().test("5", "6 10 3")
        
        
        
        
//        let res = _9_FindMaxOre().test(["22220","00000","00000","01111"])
//        let res1 = _9_FindMaxOre().test(["22220","00020","00010","01111"])
//        let res2 = _9_FindMaxOre().test(["22022","00200","00010","01111"])
        
//        let res = _10_MaxSameString().test(["abc", "bc", "c"])
//        let res1 = _10_MaxSameString().test(["abc", "bbc", "bc"])
//        let res2 = _10_MaxSameString().test(["aa", "bb", "cc"])
        
//        let res = _5_BT_LongestPalindrome().longestPalindrome("babad")
//        let res = _300_DP_LengthOfLIS().lengthOfLIS([1,3,6,7,9,4,10,5,6])
//        let res = _2862_BT_MaximumSum().maximumSum([35,45,29,16,42,49,25,19,46])
//        let res = _1665_MinimumEffort().minimumEffort([[1,2],[2,4],[4,8]])  // 8
//        let res1 = _1665_MinimumEffort().minimumEffort([[1,3],[2,4],[10,11],[10,12],[8,9]]) // 32
//        let res2 = _1665_MinimumEffort().minimumEffort([[1,7],[2,8],[3,9],[4,10],[5,11],[6,12]]) // 27
        
//        let res = _2454_SecondGreaterElement().secondGreaterElement([2,4,0,9,6])
//        let res = _11_MessageQueue().test("2 22 1 11 4 44 5 55 3 33", "1 7 2 3")
//        let res1 = _11_MessageQueue().test("5 64 11 64 9 97", "9 11 4 9")
        
//        let res = _12_Match().test("4,5", ["10,6,9,7,6", "9,10,6,7,5", "8,10,6,5,10", "9,10,8,4,9"])
        
//        let res = _13_Warming().test(["A B", "B C"], "A B C D E")
        
//        let res = _14_MessageSorted().test(4, "rolling3 stone4 like1 a2")
//        let res1 = _14_MessageSorted().test(8, "Lqifts6 and7  Exchanging1 all2 precious5 things8 kinds3 of4")
//        let res = _15_StringBrief().test("aabbcc")
//        let res1 = _15_StringBrief().test("bAaAcBb")
//        let res = _16_MatrixScaner().test("3 3", ["1 0 0","0 1 0","0 0 1"])
//        let res1 = _16_MatrixScaner().test("5 3", ["-1 0 1","0 0 0","-1 0 0","1 -0 0","0 0 0"])
//        print(res)
        
//        let res = _19_AlibabaFindGold_2().test("1,1,1,1,3,3,3,6,6,8")
//        let res1 = _19_AlibabaFindGold_2().test("2,2,2,2")
        
//        _20_AlibabaFindGold_3().test("6,3,1,6", "3")  // 0
//        _20_AlibabaFindGold_3().test("5,6,7,5,6,7", "2")  // -1
//        _20_AlibabaFindGold_3().test("5,6,7,5,6,7,5,6,5,6", "2")  // -1
        
//        let res = _2251_FullBloomFlowers().fullBloomFlowers([[1,6],[3,7],[9,12],[4,13]], [2,3,7,11])
//        let res1 = _2251_FullBloomFlowers().fullBloomFlowers([[1,10],[3,3]], [3,3,2])
        
//        let res = _739_DailyTemperatures().dailyTemperatures([73,74,75,71,69,72,76,73])
//        let res1 = _739_DailyTemperatures().dailyTemperatures([30,40,50,60])
        
//        let res = _496_NextGreaterElement().nextGreaterElement([4,1,2], [1,3,4,1])
        
//        let res = _503_NextGreaterElements().nextGreaterElements([1,2,1])
        
//        let res = _84_LargestRectangleArea().largestRectangleArea([2,4])
        
        
//        let res = _2866_MaximumSumOfHeights().maximumSumOfHeights([5,3,4,1,1])
//        let res = _2815_MaxSum().maxSum([51,71,17,24,42])
        
//        let res = _24_FindSameNumInTwoArray().test("5,3,6,-8,0,11", "2,8,8,8,-1,15")
//        let res1 = _24_FindSameNumInTwoArray().test("5,8,11,3,6,8,8,-1,11,2,11,11", "11,2,11,8,6,8,8,-1,8,15,3,-9,11")
        
//        let res = _25_Softward().test("3", ["737270", "737272", "737288"])
        
//        let res = _27_DataCategory().test("3 4 256 257 258 259 260 261 262 263 264 265")
//        let res1 = _27_DataCategory().test("1 4 256 257 258 259 260 261 262 263 264 265")
        
        // 结果227
//        _2136_EarliestFullBloom().earliestFullBloom([3,11,29,4,4,26,26,12,13,10,30,19,27,2,10], [10,13,22,17,18,15,21,11,24,14,18,23,1,30,6])
        
//        _28_RecoveryNumber().test("19801211 5")
//        _28_RecoveryNumber().test("9959969979989991000 6")
//        _28_RecoveryNumber().test("3456789 7")
        
//        _29_AlibabaFindGold_5().test("2,10,-3,-8,40,5", "4")
//        _HJ_31_SortedWord().test("I am a student")
//        _HJ_31_SortedWord().test("$bo*y gi!r#l")
//        let res = _516_DP_LongestPalindromeSubseq().longestPalindromeSubseq("bbbab")
        
//        let res = _100088_MaximumTripletValue().maximumTripletValue([12,6,1,2,7])
//        let res1 = _100088_MaximumTripletValue().maximumTripletValue([1,10,3,4,19])
        let res2 = _100088_MaximumTripletValue().maximumTripletValue([10,13,6,2])
//        let res3 = _100088_MaximumTripletValue().maximumTripletValue([6,14,20,19,19,10,3,15,12,13,8,1,2,15,3])
        
        
//        print(res)
    }


}

