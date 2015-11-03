//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

//全局变量
int newAge = 40;

//int age = 34;


@implementation DDPerson

/**
 变量使用遵循就近原则
 局部变量--->成员变量---->全局变量
 
 
 self关键字：
 在对象方法使用时，是指调用该对方法的对象；
 在类方法使用时，是指类对象
 
 在类方法中，只能通过类方法来调用类方法
 */
- (void)changeAge:(int)age
{
    _age = 30;
    
    int _age = 4;
    
    _age = age;
    
    newAge = 80;
    
}

- (int)age
{
    NSLog(@"newAge=%d",newAge);
    return _age;
    
}

+ (double)sumNum:(double)num otherNum:(double)other
{
    return num + other;
}

+ (double)avgNum:(double)num otherNum:(double)other
{
    return [self sumNum:num otherNum:other] / 2;
}
@end
