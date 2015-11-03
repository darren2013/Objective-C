//
//  main.m
//  advance-05-autoreleasepool
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDDog.h"

/**
 autorelase:延长对象的生命周期，延迟销毁
            调用后，会把对象放入离自己最近的对象释放池
 
 自动释放池销毁的时候，会把池中所有对象release调用一次
 它和对象在那里创建没有关系
 */

void test()
{
    DDPerson* p = [[DDPerson alloc] init];
    
    @autoreleasepool {
        
        
        p.name = @"hello";
        
        //调用几次autorelease，对象池销毁时就会调用几次release
        //[p autorelease];
        [p autorelease];
        
        NSLog(@"%@",p.name);
        
    }
}

/**
 自动释放池原理
 
 1.系统中维护一个自动释放池栈，当遇到@autoreleasepool {时，会创建一个自动释放池并压入栈中
 2.当自动释放池代码块结束时(}),自动释放池出栈，同事将自动释放池对象进行一次release操作
 3.只有栈顶释放池是活跃的，其他都是休眠的
 4.当遇到autorelease时，会把对象放入位于栈顶得自动释放池中
 */

void test2()
{
    DDPerson* person = [[DDPerson alloc] init];
    
    @autoreleasepool {
        [person retain];
        
        @autoreleasepool {
            person.name = @"world";
            [person autorelease];
            
            @autoreleasepool {
                [person autorelease];
            }
            NSLog(@"%zd",[person retainCount]);
            NSLog(@"%@",person.name);
        }
    }
}

/**
 自动释放池使用场景
 1.只要从方法中返回一个对象都要使用对象释放池
 getter方法
 */


void test3()
{
    NSAutoreleasePool* pool = [[NSAutoreleasePool alloc] init];
    
    DDPerson* person = [[DDPerson alloc] init];
    person.name = @"ddd";
    
    DDDog* dog = [[DDDog alloc] init];
    person.dog = dog;
    
    NSLog(@"%@",person.name);
    
    DDDog* d2 = person.dog;
    
    [person release];
    [dog release];
    
    NSLog(@"%zd",[d2 retainCount]);
    
    [pool release];
}

int main(int argc, const char * argv[]) {
    //使用场景2，在快捷的构造方法
    @autoreleasepool {
        DDPerson* p = [DDPerson person];
        NSLog(@"%zd",[p retainCount]);
    }
    
    return 0;
}
