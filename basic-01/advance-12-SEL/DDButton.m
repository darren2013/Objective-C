//
//  DDButton.m
//  basic-01
//
//  Created by 杜东方 on 15/10/18.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDButton.h"

@implementation DDButton

- (void)click
{
    if([_actioner respondsToSelector:_action])[_actioner performSelector:_action];
}
@end
