//
//  DDBullet.m
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDBullet.h"
#import "DDSolider.h"

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
        NSLog(@"enemy %@ is dead,oh yeah!!",enemy->_name);
    }
}
@end
