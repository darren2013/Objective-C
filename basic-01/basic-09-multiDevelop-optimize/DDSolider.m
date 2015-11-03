//
//  DDSolider.m
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDSolider.h"
#import "DDGun.h"

@implementation DDSolider
- (void)shootTo:(DDSolider *)other usingGun:(DDGun *)gun andBullet:(DDBullet *)bullet
{
    NSLog(@"%@ using gun shoot %@",_name,other->_name);
    [gun shootTo:other usingBullet:bullet];
}

@end
