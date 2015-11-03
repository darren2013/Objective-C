//
//  main.m
//  basic-18-id
//
//  Created by 杜东方 on 15/10/15.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DDPerson.h"

/**
 id 万能指针，可以指向任意对象
 在某些含有共同方法的对象，产生多态特性
 */

int main(int argc, const char * argv[]) {
    DDPerson* person = [DDPerson new];
    person.age = 45;
    
    //id类型本身就是一个指针类型，不用加*
    id p = person;
    
    //可以调用任意对象的方法，但如果这个对象不包含这个方法，则会报错；编译时，不会进行检查
   // [p setName:@"hh"];
    
    //id类型不能使用.语法，也不能使用->
    NSLog(@"age=%d",[p age]);
    
    return 0;
}
