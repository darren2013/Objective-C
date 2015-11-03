//
//  main.m
//  advance-04-循环引用
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"

/**
 多个对象之间不要成为封闭的环，如出现，那么环中所有对象都不会释放
 解决办法：其中一端必须assign
 */

int main(int argc, const char * argv[]) {
    DDPerson* p = [[DDPerson alloc] init];
    p.name = @"张三";
    
    DDDog* dog = [[DDDog alloc] init];
    dog.person = p;
    p.dog = dog;
    
    [p release];
    [dog release];
    return 0;
}
