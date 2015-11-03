//
//  DDGun.h
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DDSolider;
@class DDBullet;


@interface DDGun : NSObject
{
@public
    int _bulletCount;
    double _shootRange;
}

- (void)shootTo:(DDSolider*)solider usingBullet:(DDBullet*)bullet;
@end
