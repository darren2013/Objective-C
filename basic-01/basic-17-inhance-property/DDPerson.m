//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson



//

/**
 1.手动编写setter方法后，@property就不会帮助自动生成setter方法了，但还会帮助你生成getter方法及私有的成员变量
 2.手动编写gettter方法后，@property就不会帮助自动生成getter方法了，但还会帮助你生成setter方法及私有的成员变量
 3.手动编写gettter及setter方法后，@property就不会帮助自动生成getter及setter方法了，同时私有的成员变量也不会生成
 */
//- (void)setAge:(int)age
//{
//    if(age < 0)age = 0;
//    _age = age;
//}

- (int)age
{
    return _age + 10;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@:%d",_name,_age];
}

@end
