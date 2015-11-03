//
//  DDDog.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDDog.h"
#import "DDPerson.h"

@implementation DDDog

- (void)dealloc
{
    self.person = nil;
    NSLog(@"%s",__FUNCTION__);
    [super dealloc];
}
@end
