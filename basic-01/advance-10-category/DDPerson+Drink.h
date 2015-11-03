//
//  DDPerson+Drink.h
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@interface DDPerson (Drink)
{
    //不能为原有类增加实例变量
    //int age;
}

//只会生成getter和setter方法，不会生成实现，更不会生成成员变量
//@property (nonatomic,assign)float height;

- (void) drink;

@end
