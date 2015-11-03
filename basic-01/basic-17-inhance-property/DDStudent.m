//
//  DDStudent.m
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDStudent.h"

@implementation DDStudent

//访问不到父类通过@property自动生成的私有成员变量，可以通过self关键字访问
- (NSString *)description
{
    return [NSString stringWithFormat:@"%@:%d",self.name,self.age];
}

@end
