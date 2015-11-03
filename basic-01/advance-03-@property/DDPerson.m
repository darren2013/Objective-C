//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

- (void)dealloc
{
    
    NSLog(@"%s",__FUNCTION__);
    //[_room release];
    //_room = nil;
    
    //上面两行代码可以简化成下面一行，因为self调用setRoom,
    self.room = nil;
    
    [super dealloc];
}
@end
