//
//  main.m
//  advance-06_ARC
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"

/**
 ARC automatic reference counting自动引用计数
 
 ARC 编译器特性
     编译器会在适当的时候加入内存管理的代码
 
 强指针：默认所有的指针都是强指针
        只要有一个强指针指向一个对象，那么对象就不会被释放
        只要没有一个强指针指向一个对象，对象就会被立即回收
 
        __strong是一个强指针标示，因为缺省都是强指针，所以没用
 
 弱指针：弱指针指向的对象不影响对象的回收
 
 当出现循环引用时，一方必须是弱指针
 */

void test()
{
    @autoreleasepool {
        {
            __strong DDPerson* person = [[DDPerson alloc] init];
        }
        
        //DDPerson* person = [[DDPerson alloc] init];
        //person = nil;
    }
}

void test2()
{
    @autoreleasepool {
        DDPerson* person = [[DDPerson alloc] init];
        {
            DDDog* dog = [[DDDog alloc] init];
            person.dog = dog;
        }
    }
}

void test3()
{
    @autoreleasepool {
        __weak DDPerson* person = [[DDPerson alloc] init];
        
        NSLog(@"%p",person);
        //此时person不是一个野指针，而是一个nil,所以不会报错
        person.dog = nil;
    }
}


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        DDPerson* person = [[DDPerson alloc] init];
        
        DDDog* dog = [[DDDog alloc] init];
        person.dog = dog;
        dog.person = person;
    }
    
    

    return 0;
}
