//
//  DDPerson.m
//  basic-01
//
//  Created by 杜东方 on 15/10/19.
//  Copyright © 2015年 private. All rights reserved.
//

#import "DDPerson.h"

@implementation DDPerson

- (void)test:(void (^)())block
{
    block();
}

- (int)avg:(int (^)(int, int))block
{
    return block(10,20) / 2;
}

- (void)preWork
{
    NSLog(@"have breakfast...");
    NSLog(@"ride to work");
}

- (void)postWork
{
    NSLog(@"ride home");
    NSLog(@"have supper");
}

- (void)monday
{
    [self preWork];
    NSLog(@"finishing html convert to pdf");
    [self postWork];
}


- (void)tuesday
{
    [self preWork];
     NSLog(@"show the html page with data");
    [self postWork];
}

- (void)day:(void (^)())work
{
    [self preWork];
    work();
    [self postWork];
}

- (void)dealloc
{
    NSLog(@"person dealloc");
}
@end
