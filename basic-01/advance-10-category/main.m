//
//  main.m
//  advance-10-category
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson+Drink.h"
#import "NSObject+Run.h"
#import "NSString+Ext.h"

/**
 分类(类别)：扩展已有的类
 1.分类是给原有类增加方法
 2.分类可以访问原有类的成员变量（定义在头文件中）
 
 
 注意点：
 1.分类不能扩展原有类的成员变量
 2.@property,只会生成getter和setter方法声明，不会生成实现及成员变量
 3.不能在分类中定义与原有分类相同的方法，一个类可以定义多个分类，但各个分类之间的方法不能相同
 4.如果在分类中增加一个与原有类相同的方法，则分类中方法会将原有类的方法进行覆盖，即使不导入也会影响
 5.如果多个分类有相同的方法，则按照编译顺序进行覆盖
 
 给NSObject增加分类会影响到所有分类
 */


void test()
{
    @autoreleasepool {
        DDPerson* person = [[DDPerson alloc] init];
        person.name = @"hello";
        
        [person eat];
        
        // person.height = 34.3;
        
        [person drink];
        
        [@"" run];
        
    }
}


int main(int argc, const char * argv[]) {
    
    @autoreleasepool {
        NSString* str = @"hello,1234dfd56789";
        
        NSLog(@"counter=%d",[NSString countNumInString:str]);
        NSLog(@"counter=%d",[str countNum]);
    }
    return 0;
}
