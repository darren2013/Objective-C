//
//  DDDog.h
//  basic-01
//
//  Created by 杜东方 on 15/10/12.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDTools.h"


@interface DDDog : NSObject
{
    @public
    DDColor _color;
    double _speed;
    DDGender _gender;
    double _weight;
}

- (void) eat;

- (void) bark;

- (void) run;

- (BOOL) compareColorWithOtherDog:(DDDog*)other;

- (double) comparedSpeedWithOtherDog:(DDDog*)other;


@end
