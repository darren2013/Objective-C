//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson


/**
 - (void)setCount:(NSNumber *)newCount {
    [newCount retain];
    [_count release];
    // Make the new assignment.
    _count = newCount;
 }
 */
- (void)setRoom:(DDRoom *)room
{
    if(_room != room && room != nil){
        [_room release];
        _room = [room retain];
    }
    
}

- (void)dealloc
{
    [_room release];
    _room = nil;
    NSLog(@"person dealloc...");
    [super dealloc];
}
@end
