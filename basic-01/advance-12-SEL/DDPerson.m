//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

- (void)makeObject:(id)obj performWithSelector:(SEL)sel
{
    //表示某个对象能否响应一个方法
    if ([obj respondsToSelector:sel]) {
        [obj performSelector:sel];
    }
    
}
@end
