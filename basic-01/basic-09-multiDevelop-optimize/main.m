//
//  main.m
//  basic-09-multiDevelop-optimize
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDSolider.h"
#import "DDGun.h"
#import "DDBullet.h"

int main(int argc, const char * argv[]) {
    DDSolider *solider = [DDSolider new];
    solider->_name = @"zhangsan";
    solider->_life = 100;
    
    DDSolider *enemy = [DDSolider new];
    enemy->_name = @"lisi";
    enemy->_life = 20;
    
    DDGun *gun = [DDGun new];
    gun->_bulletCount = 20;
    gun->_shootRange = 23.4;
    
    DDBullet *bullet = [DDBullet new];
    bullet->_power = 50;
    
    [solider shootTo:enemy usingGun:gun andBullet:bullet];
    [solider shootTo:enemy usingGun:gun andBullet:bullet];
    return 0;
}
