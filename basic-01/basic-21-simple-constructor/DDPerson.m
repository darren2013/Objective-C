//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

+ (instancetype)personWithAge:(int)age
{
    return [[self alloc] initWithAge:age];
}

- (instancetype)initWithAge:(int)age
{
    if(self = [super init]){
        self.age = age;
    }
    
    return self;
}
@end
