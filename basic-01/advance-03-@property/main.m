//
//  main.m
//  advance-03-@property
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDRoom.h"
#import "DDPerson.h"



int main(int argc, const char * argv[]) {
    
    DDPerson* p = [[DDPerson alloc] init];
    
    DDRoom* r = [[DDRoom alloc] init];
    p.room = r;
    [r release];
    p.room = r;
 
    
    DDRoom* r2 = [[DDRoom alloc] init];
    p.room = r2;
    [r2 release];
    
    [p release];
    p = nil;
}
