//
//  main.m
//  advance-13-block
//
//  Created by 杜东方 on 15/10/19.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"

/**
 block是一种数据类型，用来封装代码
 函数不能在方法内部或函数内部，但是block可以
 
 定义block类型变量的格式
 
 返回值类型 (^block变量名称)(形参列表);
 
 实现形式
 ^返回值类型(形参列表){语句......}
 
 
 如果发现很多方法中代码都相同，就一部分不同，可以把不同的部分提取成block
 */

void test()
{
    //定义一个无参无返回值的block类型
    //定义一个block类型的变量，实现一个block
    void (^block)()=^{
        NSLog(@"block.....");
    };
    
    block();
    
    //有参无返回值
    void (^block1)(NSString* name)=^void(NSString* name){
        NSLog(@"name=%@",name);
    };
    
    block1(@"hello");
    
    //有参有返回值
    int (^sum)(int num1,int num2)=^(int num1,int num2){
        return num1 + num2;
    };
    
    /**
     int (^sum)(int num1,int num2)=^int(int num1,int num2){
     return num1 + num2;
     };
     */
    
    int rs = sum(10,20);
    
    NSLog(@"rs=%d",rs);
}


void test2()
{
    DDPerson* person = [[DDPerson alloc] init];
    
    [person test:^{
        NSLog(@"I am a block type");
    }];
    
    int rs = [person avg:^int(int num1, int num2) {
        return num1+num2;
    }];
    
    NSLog(@"rs=%d",rs);
    
    [person monday];
    [person tuesday];
    
    [ person day:^{
        NSLog(@"send the html page with email");
    }];

}

void test3(){
    //在block中可以访问局部变量
    int num = 10;
    
    void (^block)()=^{
        NSLog(@"num=%d",num);
    };
    
    block();
}

void test4()
{
    //在block中可以访问局部变量，默认不能修改局部变量的值
    //加入__block以后，num这个变量和block中的变量，会保持同步，但本质上他们是两个东西
    __block int num = 10;
    NSLog(@"%p",&num);
    
    void (^block)()=^{
        num = 20;
        NSLog(@"%p",&num);
        NSLog(@"num=%d",num);
    };
    
    block();
    NSLog(@"num=%d",num);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
       DDPerson* person = [[DDPerson alloc] init];
        
        //当在block内部使用对象的时候，block内部会对这个对象有个强引用
        void (^test)()=^{
            [person monday];
        };
        
        person = nil;
    }
    return 0;
}
