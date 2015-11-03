//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson
{
    @private
    DDDog* _dog;
}

- (void)setDog:(DDDog *)dog
{
    _dog = dog;
}


- (void)dealloc
{
    //此处只用来验证对象是否被回收，不需要调用[super dealloc]
    NSLog(@"%s",__FUNCTION__);
}
@end
