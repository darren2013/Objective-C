//
//  DDStudent.m
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDStudent.h"

@implementation DDStudent

- (void)run
{
    _height += 1;
    _weight -= 0.5;
    NSLog(@"weight %f",_weight);
}

- (void)eat
{
    _height += 1;
    _weight += 0.5;
    NSLog(@"weight %f",_weight);

}

- (void)study
{
    _cScore += 1;
    _ocScore += 1;
    _iosScore += 1;
}

- (void)sleep
{
    NSLog(@"name:%@,birthday:%@,age:%d,height:%f,weight:%f,gender:%@,cScore:%f,ocScore:%f,iosScore:%f",_name,[DDTools convertDateToString:_birthday],_age,_height,_weight,[DDTools convertGenderToString:_gender],_cScore,_ocScore,_iosScore);
}

- (float)compareCScore:(DDStudent *)other
{
    return _cScore - other -> _cScore;
}

- (float)compareIOSScore:(DDStudent *)other
{
    return _iosScore - other -> _iosScore;
}

- (float)compareOCScore:(DDStudent *)other
{
    return _ocScore - other->_ocScore;
}

- (float)calculateTotal
{
    return _cScore + _ocScore + _iosScore;
}

- (float)average
{
    return [self calculateTotal] / 3;
}

@end
