//
//  DDDog.m
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDDog.h"

@implementation DDDog

- (void)eat
{
    _weight += 0.5;
    NSLog(@"weight %f",_weight);
}

- (void)bark
{
    NSLog(@"color:%@,spped:%f,gender:%@,weight:%f",[DDTools convertColorToString:_color],_speed,[DDTools convertGenderToString:_gender],_weight);
}

- (void)run
{
    _weight -= 0.5;
    NSLog(@"speed:%f,weight:%f",_speed,_weight);
}

- (BOOL)compareColorWithOtherDog:(DDDog *)other
{
    if (_color == other -> _color) {
        return YES;
    }else return NO;
}

- (double)comparedSpeedWithOtherDog:(DDDog *)other
{
    return _speed - other->_speed;
}


@end
