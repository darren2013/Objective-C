//
//  DDStudent.m
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDStudent.h"

/**
 只有实现没有声明的方法，称为私有方法,不能在外面直接访问，但不是绝对的
 */

@implementation DDStudent

- (void)show
{
    NSLog(@"name=%@,age=%d",_name,_age);
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"name=%@,age=%d",_name,_age];
}

+ (NSString *)description
{
    return @"class method";
}

@end
