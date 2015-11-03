//
//  DDGun.m
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDGun.h"
#import "DDSolider.h"
#import "DDBullet.h"

@implementation DDGun
- (void)shootTo:(DDSolider *)solider usingBullet:(DDBullet *)bullet
{
    NSLog(@"gun shoot %@",solider->_name);
    [bullet flyTo:solider];
}

@end
