//
//  main.m
//  basic-15-inherit
//
//  Created by 杜东方 on 15/10/13.
//  Copyright © 2015年 private. All rights reserved.
//

#import <Foundation/Foundation.h>


#import "DDStudent.h"

int main(int argc, const char * argv[]) {
    DDStudent* student = [DDStudent new];
    [student setName:@"Lily"];
    [student setAge:24];
    
    [student show];
    
    //%@输出一个对象时会调用- description方法
    NSLog(@"student=%@",student);
    
    NSLog(@"student object addr %p",student);
    
    //%@输出class对象时，会直接调用类方法description;
    //类对象两种获取方式
    NSLog(@"class object=%@",[DDStudent class]);
    
    NSLog(@"class object=%@",[student class]);
    
    NSLog(@"class object addr=%p",[DDStudent class]);
    
    NSLog(@"class object addr=%p",[student class]);
    
    return 0;
}
