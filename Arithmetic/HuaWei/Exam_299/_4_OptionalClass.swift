//
//  _4_OptionalClass.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/26.
//

import Foundation

// 需要找出同时选了两门选修课的学生。
/*
 【例子1】
 输入:
 01202021,75;01201033,95;01202008,80;01203006,90;01203088,100   // 选修课1
 01202008,70;01203088,85;01202111,80;01202021,75;01201100,88    // 选修课2
 
 输出: 按照班级划分的，同时选修了两门课程的学生的学好
 01202              // 班级小的排前面
 01202008:01202021  // 两门总成绩高的排前面，成绩相同，则学号低的排前面
 01203
 01203088
 
 【例子2】
 输入：
 01201022,75;01202033,95;01202018,80;01203006,90;01202066,100
 01202008,70;01203102,85;01202111,80;01201021,75;01201100,88
 输出:
 NULL
 
 */
// 【花费51分钟】
private class Student {
    var no: String = ""
    var cls: String = ""
    var score: Int = 0
}

class _4_OptionalClass {
    func test(_ input1: String, _ input2: String) {
        var stuMap = [String:[String]]()
        let array1 = input1.split(separator: ";")
        let array2 = input2.split(separator: ";")
        for str in array1 {
            let arr = str.split(separator: ",")
            let no = String(arr[0])
            let score = String(arr[1])
            if stuMap[no] == nil {
                stuMap[no] = [score]
            }
        }
        for str in array2 {
            let arr = str.split(separator: ",")
            let no = String(arr[0])
            let score = String(arr[1])
            if stuMap[no] == nil {
                stuMap[no] = [score]
            } else {
                var ori = stuMap[no]
                ori?.append(score)
                stuMap[no] = ori
            }
        }
        // 筛选出有两门课程的学生
        var stuarray = [Student]()
        var clsset = Set<String>()
        for (no, score) in stuMap {
            if score.count == 1 { continue }
            let stu = Student()
            stu.no = no
            let start = no.startIndex
            let end = no.index(start, offsetBy: 5)
            stu.cls = String(no[start..<end])
            var total = 0
            for sco in score {
                total += Int(sco)!
            }
            stu.score = total
            stuarray.append(stu)
            clsset.insert(stu.cls)
        }
        if stuarray.count == 0 {
            print("NULL")
        } else {
            let clsarr = Array(clsset).sorted { v1, v2 in
                Int(v1)! < Int(v2)!
            }
            for cls in clsarr {
                print(cls)
                var temp = [Student]()
                for stu in stuarray {
                    if stu.cls == cls {
                        temp.append(stu)
                    }
                }
                temp = temp.sorted { s1, s2 in
                    if s1.score != s2.score {
                        // 分数小的排前面
                        return s1.score < s2.score
                    } else {
                        // 如果总分相同，学号小的排前面
                        return Int(s1.no)! < Int(s2.no)!
                    }
                }
                var str = ""
                for i in 0..<temp.count {
                    let stu = temp[i]
                    if 0 == i {
                        str.append(stu.no)
                    } else {
                        str.append(";\(stu.no)")
                    }
                }
                print(str)
            }
        }
    }
}
            
            
