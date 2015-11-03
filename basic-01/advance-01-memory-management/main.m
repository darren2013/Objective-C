//
//  main.m
//  advance-01-memory-management
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

/**
 
 栈：存放局部变量，在方法或函数内部定义的变量
    系统管理
 
 堆：动态存储区
    由程序员来管理
 
 
 ARC Automatic Reference Counting
 MRC Manual Reference Counting
 
 1.当一个对象刚创建的时候，它的引用计数为1
 2.当一个对象引用计数为0时，对象才会被销毁，系统立即把它回收
 
 
 内存管理不当:
 1.不再使用对象没有被回收，内存泄露，导致程序闪退
 2.正在使用对象被释放了，造成野指针，程序崩溃
 
 */

#import <Foundation/Foundation.h>

#import "DDPerson.h"

int main(int argc, const char * argv[]) {
    
    //指针放在栈中，指针所指向的对象放在堆中
    DDPerson* person = [[DDPerson alloc] init];
    
   //XCode 5之后，缺省都是开启了ARC,可以通过手动方式关闭掉
    long count = [person retainCount];
    NSLog(@"retain count:%lu",count);
    
    //retain会将对象的引用计数+1
    [person retain];
     NSLog(@"retain count:%zd",[person retainCount]);
    
    
    //release方法会将引用计数-1
    //xcode 缺省是关掉僵尸对象检测，所以不会被立即回收，开启方式,edit scheme-->run debug->enable zoombile objects
    [person release];
    
    //对象已经被回收，此时不能被调用
    NSLog(@"retain count:%zd",[person retainCount]);
    
    [person release];
    
    //当调用relase以后，并且确信该对象的引用计数为0时，就应该将指针置为nil,该指针就会被释放
    //当一个指针指向nil时，称为空指针，给空指针发送消息，系统不会报错，什么都不做
    person = nil;
    
    NSLog(@"retain count:%zd",[person retainCount]);
    
    NSString* str3 = [NSString stringWithFormat:@"str=%@,int=%d",@"hello,",23];
    NSLog(@"str3 retainCount=%zd",[str3 retainCount]);

    
    return 0;
}
