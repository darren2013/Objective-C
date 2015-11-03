//
//  main.m
//  advance-16-collection-memory-management
//
//  Created by 杜东方 on 15/10/25.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDDog.h"

/**
 MRC手动内存管理
 当添加一个对象到集合中时，会对这个对象进行retain操作
 当从一个集合中删除一个对象时，会对这个对象进行release操作
 
 ARC
 当添加一个元素到集合中是，集合会对这个对象有个强引用
 当从集合中删除一个元素时，集合会释放对这个对象强引用
 当销毁一个集合时，会释放对对象的所有的强引用
 */

void testMRC()
{
//    DDDog *dog = [[DDDog alloc] init];
//    NSMutableArray *array = [[NSMutableArray alloc] init];
//    
//    [array addObject:dog];
//    NSLog(@"retailCount=%zd",[dog retainCount]);
//    //[array removeObject:dog];
//    NSLog(@"retailCount=%zd",[dog retainCount]);
//    [array release];
//    [dog release];
}

void testARC()
{
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        DDDog *dog = [[DDDog alloc] init];
        NSMutableArray *array = [[NSMutableArray alloc] init];
        
        [array addObject:dog];
        
        //[array removeObject:dog];
        array = nil;
        dog = nil;
        
    }
    return 0;
}
