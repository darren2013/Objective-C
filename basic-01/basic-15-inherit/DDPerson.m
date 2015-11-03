//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson
{
    //在实现中也可以声明成员变量，但无论加什么修饰符，其类型都是private
    int _weight;
}

- (void) setName:(NSString *)name
{
    _name = name;
}

- (NSString *)name
{
    return _name;
}

- (int) age
{
    return _age;
}

- (void) setAge:(int)age
{
    _age = age;
}
@end
