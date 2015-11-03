//
//  DDDog.m
//  basic-01
//
//  Created by 杜东方 on 15/10/25.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDDog.h"

@implementation DDDog

-(void)dealloc
{
    NSLog(@"%s",__func__);
    self.name = nil;
    //[super dealloc];
}
@end
