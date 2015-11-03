//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

//这个方法不能被手动调用，对象被系统回收之前会自动调用
- (void)dealloc
{
    NSLog(@"person dealloc is called...");
    //一定要调用父类dealloc,并且放在最后
    [super dealloc];
}
@end
