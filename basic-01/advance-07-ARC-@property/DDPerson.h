//
//  DDPerson.h
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDDog.h"

/*
 内存管理
 strong 普通对象
 copy 字符串
 assign 基本数据类型
 weak 循环引用一端
 */

@interface DDPerson : NSObject

@property (nonatomic,copy)NSString* name;

@property (nonatomic,strong)DDDog* dog;

@property (nonatomic,assign)int age;

@end
