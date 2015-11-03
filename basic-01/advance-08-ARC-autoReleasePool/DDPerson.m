//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

+ (DDPerson *)person
{
    return [[self alloc] init];
}

- (void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}
@end
