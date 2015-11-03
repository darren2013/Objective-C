//
//  main.m
//  basic-09-multifilesDevelop
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

//告诉编译器，这个类已经存在了,但是并不知道这个类具体有那些属性和行为
//所以一般把类的声明都写在前面
@class DDSolider;

@interface DDBullet : NSObject
{
    @public
    int _power;
}

//#warning "TODO"
- (void) flyTo:(DDSolider*)enemy;
@end

@interface DDGun : NSObject
{
@public
    int _bulletCount;
    double _shootRange;
}

- (void)shootTo:(DDSolider*)solider usingBullet:(DDBullet*)bullet;
@end


@interface DDSolider : NSObject
{
@public
    NSString * _name;
    int _life;
}

- (void) shootTo:(DDSolider*) other usingGun:(DDGun*) gun andBullet:(DDBullet*)bullet;
@end


@implementation DDBullet

- (void)flyTo:(DDSolider*)enemy
{
    
   NSLog(@"enemy %@ is shot",enemy->_name);
    
    if (enemy->_life >= 10) {
        enemy->_life -= 10;
    }else{
        enemy->_life = 0;
    }
    
    if (enemy->_life == 0) {
        NSLog(@"enemy %@ is dead",enemy->_name);
    }
}
@end



@implementation DDGun

- (void)shootTo:(DDSolider *)solider usingBullet:(DDBullet *)bullet
{
    NSLog(@"gun shoot %@",solider->_name);
    [bullet flyTo:solider];
}

@end




@implementation DDSolider

- (void)shootTo:(DDSolider *)other usingGun:(DDGun *)gun andBullet:(DDBullet *)bullet
{
    NSLog(@"%@ using gun shoot %@",_name,other->_name);
    [gun shootTo:other usingBullet:bullet];
}

@end


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
