//
//  _18_MessageCircle.swift
//  Arithmetic
//
//  Created by shengangneng on 2023/9/27.
//

import Foundation

/*
 
 GMP 协议中响应报文和查询报文，是维系组播Q通路的两个重要报文，在一条已经建立的组播通路中两个相邻的 HOST和 ROUTER，ROUTER 会给 HOST 发送查询报文，HOST 收到查询报文后给 ROUTER 回复一个响应报文，以维持相互之间互通的关系，一日这个关系断裂，那么这条组播通路就异常”了。现通过某种手段，抓取到了 HOST和 ROUTER 两者通讯的所有响应报文和查询报文，请分析该组播通路是否“正常”.输入描述:
 第一行为一个整数n，表示抓到的报文数量
 后续n行每行两个整数d1和d2表示互通。
 输出描述:
 组播通路是否正常，正常输出True，否则输出False示例1:
 5
 1 2
 2 3
 3 2
 1 2
 2 1
 输出:
 True
 【略】
 
 */
class _18_MessageCircle {
    
}
