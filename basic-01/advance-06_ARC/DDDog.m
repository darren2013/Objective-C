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
{
    @private
    __weak DDPerson* _person;
}
- (void)dealloc
{
    NSLog(@"%s",__FUNCTION__);
}

- (void)setPerson:(DDPerson *)person
{
    _person = person;
}
@end
