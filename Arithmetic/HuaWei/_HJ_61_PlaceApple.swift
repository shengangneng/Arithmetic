//
//  _HJ_61_PlaceApple.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/24.
//

import Foundation

/*
 
 import java.util.*;
 public class Main {
     public static void main(String[] args) {
         Scanner scan = new Scanner(System.in);
         System.out.println(getCount(scan.nextInt(), scan.nextInt()));
     }
      
     public static int getCount(int m, int n){
         if(m < 0 || n <= 0){
             return 0;
         }
         if(m == 1 || n == 1 || m == 0){
             return 1;
         }
         return getCount(m,n-1) + getCount(m-n, n);
     }
 }
 
 */
struct _HJ_61_PlaceApple {
    
    func placeApple2(_ line: String) {
        let parts = line.split(separator: " ")
        let m = Int(parts[0])!
        let n = Int(parts[1])!
        print(getCount(m, n))
    }
    
    private func getCount(_ m: Int, _ n: Int) -> Int {
        if m < 0 || n <= 0 { return 0 }
        if m == 1 || n == 1 || m == 0 { return 1 }
        // getCount(m, n - 1) : 相当于当前盘子放0，然后剩余m放在n-1个盘子的情况
        // getCount(m - n, n) : 每个盘子至少放一个，那么其实就相当于剩余(m-n)放到n个盘子的情况
        return getCount(m, n - 1) + getCount(m - n, n)
    }
    
    
    
    
    
    
    func placeApple(_ line: String) {
        let parts = line.split(separator: " ")
        let m = Int(parts[0])!
        let n = Int(parts[1])!
        if n == 1 {
            print(1)
            return
        }
        // (v1, v2, v3) 说明：v1累加总数、v2剩余可用数字、v3拼接字符串
        var queue = [(Int, Int, String)]()
        for i in 0..<m {
            queue.append((i, m - i, "\(i)"))
        }

        var level = 0
        var res = 0
        var set = Set<String>()
        while !queue.isEmpty {
            level += 1
            let count = queue.count
            for _ in 0..<count {
                let (num, rest, str) = queue.removeFirst()
                if level == n && num == m {
                    let add: String = String(str.sorted())
                    if !set.contains(add) {
                        set.insert(add)
                        res += 1
                    }
                    continue
                }
                if rest >= 0 {
                    for j in 0...rest {
                        queue.append((num + j, rest - j, "\(str)\(j)"))
                    }
                }
            }
            if level == n { break }
        }
        print(res)
    }
}
