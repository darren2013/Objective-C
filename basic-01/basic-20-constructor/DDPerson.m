//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

/**
 重写init方法要注意
 1.必须调用父类的init方法
 2.必须校验是否初始化成功
 3.返回self
 */
- (id)init
{
    self = [super init];
    
    if(self){
        self.age = 50;
    }
    
    return self;
}

- (id)initWithAge:(int)age
{
    self = [super init];
    
    if(self){
        self.age = age;
    }
    
    return self;
}

- (id)initWithAge:(int)age andName:(NSString *)name
{
    NSLog(@"person:%p",self);
    
    if(self = [super init]){
        self.age = age;
        self.name = name;
    }
    
    return self;
}
@end
