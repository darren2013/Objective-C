//
//  main.m
//  advance-02-multiple-object-memory-management
//
//  Created by 杜东方 on 15/10/17.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDPerson.h"
#import "DDRoom.h"

/**
 手动管理内存黄金法则
 谁调用new、alloc、 retain、 copy、 multipleCopy,就要负责调用release或autoRelease
 
 口诀：有加就有减
 
 
 1.当你需要一个对象的时候，就发送一条retain消息
 2.当你不需要一个对象的时候，就发送一条release消息
 3.当你接受一个新对象时，需要对旧对象进行release,retain新对象
 4.当新对象和旧对象是同一个对象时，不需要内存管理的代码
 
 
 */
int main(int argc, const char * argv[]) {
    
    DDPerson* person = [[DDPerson alloc] init];
    
    DDRoom* r = [[DDRoom alloc] init];
    
    [person setRoom:r];//r=2
    
    [r release];//r=1
    
    DDRoom* r2 = [[DDRoom alloc] init];
    person.room = r2;//r=0
    [r2 release];
    
    person.room = r;
    
    [person release];
    return 0;
}
