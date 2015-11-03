//
//  DDBullet.h
//  basic-01
//
//  Created by 杜东方 on 15/10/11.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DDSolider;

@interface DDBullet : NSObject
{
@public
    int _power;
}

//#warning "TODO"
- (void) flyTo:(DDSolider*)enemy;
@end
