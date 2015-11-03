//
//  main.m
//  advance-14-protocol
//
//  Created by 杜东方 on 15/10/20.
//  Copyright © 2015年 private. All rights reserved.
//

/*
 
 协议：对象之间的一种约定
 只有方法声明没有方法实现的一种类型
 
 
 */

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Bad.h"
#import "DDTeacher.h"
#import "DDSuperMan.h"
#import "Beauty.h"
#import "IPad.h"
#import "IPhone.h"

void test()
{
    Student* stu = [[Student alloc] init];
    [stu rob];
    
    DDTeacher* teacher = [[DDTeacher alloc] init];
    [teacher helpOthers];
    
    DDSuperMan* superMan = [[DDSuperMan alloc] init];
    [superMan rob];
    [superMan helpOthers];
    
    //通过id<协议名称>定义出来的指针，只能指向实现这个协议的实例对象
    //和id结合实现多态特性
    id<Bad> badMan = stu;
    [badMan rob];
    badMan = superMan;
    [badMan rob];
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Beauty* beauty = [[Beauty alloc] init];
        IPad* ipad = [[IPad alloc] init];
        IPhone* iphone = [[IPhone alloc] init];
        
        beauty.player = ipad;
        [beauty playGames];
        
        beauty.player = iphone;
        [beauty playGames];
        
    }
    return 0;
}
