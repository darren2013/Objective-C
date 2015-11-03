//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/14.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

/**
 synthesize,也是一个编译器指令(指挥编译器做事情的指令)
 1.在类的实现中，自动生成setter和getter方法实现
 2.自动生成一个私有的成员遍历，和synthesize后面指定的名字
   可以指定synthesize 在生成setter和getter方法使用哪个成员变量
 */
//

@synthesize age = _age;
//- (void)setAge:(int)age
//{
//    _age = age;
//}
//
//- (int)age
//{
//    return _age;
//}
@end
