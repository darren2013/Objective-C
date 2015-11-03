//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

/**
 类扩展：
 1.小括号不能有任何内容
 2.一般写在.m文件中，为类增加私有的成员变量、属性、方法
 */
@interface DDPerson ()
{
    int _age;
}

@property NSString* name;

- (void) show;


@end

@implementation DDPerson

- (void)show
{
    NSLog(@"name=%@,age=%d",_name,_age);
}
@end
