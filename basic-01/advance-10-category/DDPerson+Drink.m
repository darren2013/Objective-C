//
//  DDPerson+Drink.m
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson+Drink.h"

@implementation DDPerson (Drink)


//可以访问原有类的成员变量(定义在声明中的)
- (void)drink
{
    _age = 34;
    NSLog(@"drink,%@,%d",self.name,_age);
}
@end
