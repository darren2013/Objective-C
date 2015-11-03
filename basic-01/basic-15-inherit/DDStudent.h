//
//  DDStudent.h
//  basic-01
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDStudent.h"
#import "DDPerson.h"

/**
 继承
 1.A 继承B时，A就拥有B所有的成员变量及方法
 
 
 继承好处：代码复用
 缺点：父类改变，子类也要跟着改变，代码耦合度高；
 继承层次太深，造成代码难以阅读
 
   1.OC中类方法是可以继承的
   2.类方法也是可以重写的
   3.类方法名和对象方法名可以相同，通过+ -,通过方法指示符来区分
   4.子类中不可以和父类中有相同的成员变量
 
 */

@interface DDStudent : DDPerson

- (void)show;
@end
