//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDRoom.h"

/**
 @property内存管理的关键字
 
 retain：会在setter和getter方法中加入一些内存管理的代码
        当属性为对象时使用
 
 assign:直接赋值，不生成内存管理的代码
        当属性为基本数据类型时，使用assign
 
 copy:复制对象，当属性为NSString时使用
 
 线程安全相关
 nonatomic,非线程安全的代码，不加锁，速度快
 atomic,原子的，缺省使用
 
 控制权限
 readonly:只会生成getter方法
 readwrite:会生成setter和getter方法
 
 修改方法名称：
            setter
            getter
 */



@interface DDPerson : NSObject

@property (nonatomic,assign,getter=isMan,getter=setMyMan) BOOL man;

@property (nonatomic,copy) NSString* name;

@property (nonatomic,assign,readonly) int age;

@property (nonatomic,retain) DDRoom* room;

@end
