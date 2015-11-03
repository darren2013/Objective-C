//
//  DDSolider.h
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DDGun;
@class DDBullet;

@interface DDSolider : NSObject
{
@public
    NSString * _name;
    int _life;
}

- (void) shootTo:(DDSolider*) other usingGun:(DDGun*) gun andBullet:(DDBullet*)bullet;
@end
