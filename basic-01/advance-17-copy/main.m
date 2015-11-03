//
//  main.m
//  advance-17-copy
//
//  Created by 杜东方 on 15/10/25.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DDDog.h"

void test()
{
    //对所有不可变对象的copy都是浅复制
    NSString *str = [NSString stringWithFormat:@"abc"];
    NSLog(@"%p",str);
    
    NSString *str2 = [str copy];
    NSLog(@"%p",str2);
    
    NSArray *array = [NSArray arrayWithObjects:@1, @2,@3,nil];
    NSArray *array2 = [array copy];
    NSLog(@"%p",array);
    NSLog(@"%p",array2);
}

void testStr()
{
    //对所有不可变对象进行mutablecopy操作都是深复制
    NSString *str = [NSString stringWithFormat:@"abc"];
    NSLog(@"%p",str);
    NSMutableString *str2 = [str mutableCopy];
    NSLog(@"%p",str2);
    
    //对一个可变对象进行copy或mutablecopy操作，会产生一个全新的对象
    NSString *str3 = [str2 copy];
    //[str2 insertString:@"d" atIndex:3];
    NSLog(@"str3=%p",str3);
    NSString *str4 = [str2 mutableCopy];
    NSLog(@"str4=%p",str4);
}

void testArray(){
    NSArray *array = [NSArray arrayWithObjects:@1,@2,nil];
    NSLog(@"%p",array);
    NSMutableArray *array2 = [array mutableCopy];
    NSLog(@"%p",array2);
    
    //对一个可变对象进行copy或mutablecopy操作都是深复制
    NSMutableArray *array3 = [array2 copy];
    NSLog(@"%p",array3);
    NSMutableArray *array4 = [array2 mutableCopy];
    NSLog(@"%p",array4);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //复制的是对象的指针
       DDDog *dog = [[DDDog alloc] init];
        dog.name = @"Kitty";
        NSArray *array = [NSArray arrayWithObject:dog];
        NSMutableArray *array2 = [array mutableCopy];
        DDDog *dog2 = array2[0];
        dog2.name = @"Jacky";
        
        NSLog(@"%@",dog.name);
        
        DDDog *dog3 = [[DDDog alloc] init];
        dog3.name = @"hello";
        [array2 addObject:dog3];
        NSLog(@"%zd",array2.count);
        NSLog(@"%zd",array.count);
    }
    return 0;
}
